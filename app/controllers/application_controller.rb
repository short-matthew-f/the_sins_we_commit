class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def welcome
    render '/welcome'
  end

  def amiloggedin
    amiloggedin = !!session[:current_user_id]

    render json: current_user
  end

  private

  def current_user
    if session[:current_user_id]
      @current_user ||= User.find(session[:current_user_id])
    else
      @current_user = false
    end
  end
end
