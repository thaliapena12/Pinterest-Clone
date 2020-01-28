class Api::SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if user
      sign_in(user)
      render "api/users/show"
      # flash[:success] = "Logged in"
    
    else
      render json: ["Wrong Username and/or Password"], status: 401
    end
  end

  def destroy
    @user = current_user
    if @user
      sign_out!
      render "api/users/show"
    else
      render json: ["User is not currently signed in."], status: 404
    end
  end

end
