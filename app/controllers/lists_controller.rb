class ListsController < ApplicationController
  before_action :set_params, only: [:edit, :update, :destroy, :show]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to root_path
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
    redirect_to root_path
  end

  def calender
    @lists = List.all
    @list = List.where(params[:list_id]).first
  end
  private

  def list_params
    params.require(:list).permit(:title, :description, :start_date, :end_date).merge(user: current_user)
  end

  def set_params
    @list = List.find(params[:id])
  end
end
