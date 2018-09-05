class BoardGamesController < ApplicationController
  def index
    #@user = User.find(params[:user_id])
    @boardgames= BoardGame.all
  end

  def show
    @game = BoardGame.find(params[:id])
    @people_who_own_this_game = @game.users.joins(:user_board_games).where("user_board_games.own_or_play=?", "own").uniq
    @people_who_want_to_play_this_game = @game.users.joins(:user_board_games).where("user_board_games.own_or_play=?", "play").uniq

     #binding.pry
  end

  def new
    @game = BoardGame.new
  end

  def create
    #@user = User.find(params[:user_id])
    @game = BoardGame.new
    @game.save
    redirect_to board_games_path
  end

  private
  def board_game_params
    params.require(:board_game).permit(:title)
  end
end
