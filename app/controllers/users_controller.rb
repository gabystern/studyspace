class UsersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid? && params[:password] == params[:password_confirmation]
      @user.save
      session[:user_id] = @user.id
      ##redirect_to study_room_index page that has all of the events listed
    else
      flash[:notice] = "Your password does not match. Please try again."
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
