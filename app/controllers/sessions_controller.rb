class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_name(params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_url flash[:notice] = "Logged in! User is " + @user.name
    else
      redirect_to root_url flash[:notice] = "Login failed!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url flash[:notice] = "Logged out!"
  end

end


