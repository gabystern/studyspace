class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if params[:password] == params[:password_confirmation] && !params[:password].blank?
      @user = User.create(user_params)
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
