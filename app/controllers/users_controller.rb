class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
  end

    def show
      @user = User.find(params[:id])
     @games_owned = @user.board_games.joins(:user_board_games).where("user_board_games.own_or_play=?", "own").uniq
      # @games_owned = @user.user_board_games.where("user_board_games.own_or_play=?", "own")
      # @games_to_play = @user.user_board_games.where("user_board_games.own_or_play=?", "play")

      @games_to_play = @user.board_games.joins(:user_board_games).where("user_board_games.own_or_play=?", "play").uniq
       #binding.pry
    end

    def index
      @users = User.all
    end


     private
     def user_params
       params.require(:user).permit(:username, :password, :location)
     end
  end
