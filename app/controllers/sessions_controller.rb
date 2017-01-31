class SessionsController < ApplicationController
  def create
    begin
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = @user.id if @user
      flash[:success] = "Welcome, #{@user.name}!"
    rescue
      flash[:warning] = "There was an error while trying to authenticate your account"
    end
    redirect_to root_path
  end
end
