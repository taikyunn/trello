class CardController < ApplicationController
  before_action :set_params, only: [:show,:edit,:update]

  def new
    @card = Card.new
    @list = List.find_by(params[:list_id])
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
    if @card.update
      redirect_to root_parh
    else
      render action: :edit
    end
  end

  private
  def card_params
    params.require(:card).permit(:title,:memo,:list_id)
  end

  def set_params
    @card = Card.find(params[:id])
  end
end
