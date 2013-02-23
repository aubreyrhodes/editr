class SessionsController < ApplicationController
  def create
    UserLogin.login(params[:email], params[:password], session)
    if user_signed_in?
      flash[:notice] = "Welcome #{current_user.name}"
      redirect_to root_path
    else
      flash[:alert] = "Could not log in"
      redirect_to root_path
    end
  end
end
