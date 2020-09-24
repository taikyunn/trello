class ListsController < ApplicationController
  before_action :set_params only: [:edit,:update]

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    binding.pry
    if @list.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def update
    if @list.update
      redirect_to root_path
    else
      ender action: :edit
    end
  end

  private
    def list_params
      params.require(:list).permit(:title).merge(user: current_user)
    end

    def set_params
      @list = List.find(params[:id])
    end
end
