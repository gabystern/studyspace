class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      ##redirect_to study_room_index page that has all of the events listed
    else
      flash[:notice] = "Incorrect username or password. Try again."
      render :new
    end
  end

end
