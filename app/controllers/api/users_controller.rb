class Api::UsersController < ApplicationController
  def show
     @user = User.find(params[:id])
      if @user
        render :show
      else
        render json: @user.errors.full_messages, status: 404
      end
  end
  def new
    @user = User.new
    render :new
  end
  
  def index
    @users =User.all
    render :index
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in(@user)
       render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private
  def user_params
    params.require(:user).permit(:password, :username)
  end
end
