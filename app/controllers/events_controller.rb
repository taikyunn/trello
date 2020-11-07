class EventsController < ApplicationController
  before_action :set_list, only: [:edit, :update, :destroy, :show]

  def index
    @lists = List.all
    @list = List.where(params[:list_id]).first
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end

  def new
    @event = Event.new
  end

  def create
    @list = List.new(list_param)
    if @list.save
      render action: :index
    else
      render action: :new
    end
  end

  def show
    list = List.where(params[:id])
  end

  def update
    # respond_to do |format|
    #   if @list.update(list_params)
    #     format.html { redirect_to @list, notice: 'Event was successfully updated.' }
    #     format.json { render :index, status: :ok, location: @list }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @list.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def destroy
    # @list.destroy
    # respond_to do |format|
    #   format.html { redirect_to action: :index, notice: 'Event was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_param
    params.permit(:title, :description, :start_date, :end_date).merge(user_id: current_user.id)
  end

  def list_params
    params.require(:list).permit(:title, :description, :start_date, :end_date).merge(user_id: current_user.id)
  end
end
