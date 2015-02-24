class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to "/users/#{session[:user_id]}"
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

  def signup
    @user = User.create(username: params[:session][:username], password: params[:session][:password], password_confirmation: params[:session][:password_confirmation])
      p "hey guys. #{@user.id}"
      p @user
      p @user.id
      redirect_to "/users/#{@user.id}"
  end

end