class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
    #@user = User.find_by_username(params[:username])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to new_user_path
  end



end
