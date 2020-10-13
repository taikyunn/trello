class TopsController < ApplicationController
  def index
    @lists = List.where(user: current_user).order('created_at ASC')
    @list = List.where(params[:list_id]).first
    @card = Card.where(params[:card_id]).first
  end
end
