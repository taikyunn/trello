class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @lists = current_user.lists
  end

end
