class SessionsController < ApplicationController
  def create
    begin
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = @user.id if @user
      flash[:success] = "Welcome, #{@user.name}!"
    rescue
      flash[:dangerous] = "There was an error while trying to authenticate your account"
    end
    redirect_to root_path
  end

  def destroy
    if current_user
      session.clear
      flash[:success] = "You have been logged out"
    end
    redirect_to root_path
  end
end
