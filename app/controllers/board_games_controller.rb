class BoardGamesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @boardgames= BoardGame.all
  end

  def show
    @game = BoardGame.find(params[:id])

  end

  private
  def board_game_params
    params.require(:board_game).permit(:title)
  end
end
