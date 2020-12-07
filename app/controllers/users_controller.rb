class UsersController < ApplicationController
  def show
    @lists = List.where(user: current_user)
  end
end
