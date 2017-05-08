class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find(username: params[:username])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
    else
      flash[:message] = "Incorrect username or password. Try again"
      render :new
    end
  end

end
