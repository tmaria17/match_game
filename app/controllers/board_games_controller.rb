class BoardGamesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @boardgames= BoardGame.all
  end

  def show
    @game = BoardGame.find(params[:id])

  end

end
