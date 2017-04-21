class SessionsController < ApplicationController
  def create

    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password])

    if user.nil?
      flash.now[:errors] = ["Invalid credentials"]
      render :new
    else
      login!(user)
      redirect_to "http://www.google.com"
    end
  end

  def new
    render :new
  end

  def destroy
    current_user.reset_session_token!
    session[:session_token] = nil
  end
end
