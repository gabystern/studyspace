class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  helper_method :authorize_user, :current_user, :logged_in?, :start_time_convert, :end_time_convert, :format_time


private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authorize_user
    if !logged_in?
      flash[:notice] = "You are not allowed to do that unless you are logged in."
      redirect_to login_path
    end
  end

  def logged_in?
    !!session[:user_id]
  end

  def start_time_convert(time)
    t = [time[:date], time[:start_time]].join(" ").to_datetime
    t.strftime("%Y-%m-%d %H:%M:%S")
  end

  def end_time_convert(time)
    t = [time[:date], time[:start_time]].join(" ").to_datetime + time[:duration].to_f.hours
    t.strftime("%Y-%m-%d %H:%M:%S")
  end

  def format_time(time)
    datetime = time.to_s(:long_ordinal).split(" ")
    time = datetime.pop
    time = time.to_datetime.strftime("%-I:%M %p")
    datetime.push(time)
    datetime.join(" ")
  end

end
