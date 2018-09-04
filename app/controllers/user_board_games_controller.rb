class UserBoardGamesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @boardgames= BoardGame.all
  end


end
