class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  helper_method :current_user

  def welcome
    render '/welcome'
  end

  private

  def current_user
    if session[:current_user_id]
      @current_user ||= User.find(session[:current_user_id])
    else
      @current_user = nil
    end
  end

  def logged_in?
    !!current_user
  end

  def require_current_user
    redirect_to root_path unless logged_in?
  end
end
