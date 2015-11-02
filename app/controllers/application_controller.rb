class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  helper_method :current_user

  def welcome
    render '/welcome'
  end

  def home
    render '/home', layout: "angular"
  end

  private

  def current_user
    if session[:session_token]
      @current_user ||= User.find_by(session_token: session[:session_token])
    else
      @current_user = nil
    end
  end

  def log_out!
    session[:session_token] = nil
  end

  def logged_in?
    !!current_user
  end

  def require_current_user
    redirect_to root_path unless logged_in?
  end
end
