class ApplicationController < ActionController::Base
  protect_from_forgery

  def user_signed_in?
    session[:user_id].present?
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end
