class UsersController < ApplicationController
  before_action :authorize_user
  skip_before_action :authorize_user, only: [:new, :create]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end
  

  def create

    @user = User.new(user_params)
    if @user.valid?
      if params[:user][:password] == params[:user][:password_confirmation]
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:notice] = "Your password does not match. Please try again."
        render :new
      end
    else
      flash[:notice] = "This username is taken. Please try another."
      render :new
    end

  end

  def show
    
    if User.find_by_slug(params[:id])
      @user = User.find_by_slug(params[:id])
    else
      @user = User.find(params[:id])
    end
    @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
