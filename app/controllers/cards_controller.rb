class CardsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  before_action :list_params, only: [:new, :show]

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def update
    if @card.update(card_params)
      redirect_to root_path
    else
      render action: :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to root_path
  end

  def edit
    @lists = List.where(user: current_user)
  end

  private

  def card_params
    params.require(:card).permit(:title, :memo, :list_id, :start_date, :end_date, :star)
  end

  def set_params
    @card = Card.find(params[:id])
  end

  def list_params
    @list = List.find_by(params[:list_id])
  end
end
