class EventsController < ApplicationController
  before_action :set_list, only: [:edit, :update, :destroy, :show]

  def index
    @lists = List.all
    @list = List.where(params[:list_id]).first
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

  def update
    if @list.update(list_params)
      redirect_to root_path
    else
      render action: :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to action: :index
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
