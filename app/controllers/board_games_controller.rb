class BoardGamesController < ApplicationController
  def index
    #@user = User.find(params[:user_id])
    @boardgames= BoardGame.all
  end

  def show
    @game = BoardGame.find(params[:id])
    @people_who_own_this_game = @game.users.joins(:user_board_games).where("user_board_games.own_or_play=?", "own").uniq
    @people_who_want_to_play_this_game = @game.users.joins(:user_board_games).where("user_board_games.own_or_play=?", "play").uniq
  end

  def new
    @user = User.find(params[:user_id])
    @game = BoardGame.new
    @user_board_game = UserBoardGame.new
  end

  def create
    if current_admin?
    @game = BoardGame.create(board_game_params)
    redirect_to board_games_path
  else
    @user_board_game = current_user.user_board_games.create(user_board_game_params)
    redirect_to user_path(current_user)
  end
  end

  private
  def board_game_params
    params.require(:board_game).permit(:title)
  end

  def user_board_game_params
    params.require(:user_board_game).permit(:board_game_id, :own_or_play)

  end
end
