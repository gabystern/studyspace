class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :authorize_user, :current_user, :logged_in?


private

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authrize_user
    if !logged_in?
      flash[:notice] = "You are not allowed to do that unless you are logged in."
      redirect_to login_path
    end
  end

  def logged_in?
    !!session[:user_id]
  end

end
