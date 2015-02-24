class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(username: params[:user][:username])
    redirect_to "/users/#{@user.id}"
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end