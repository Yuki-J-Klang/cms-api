class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      user_success(@user)
    else
      render_404
    end
  end

  def show
    @user = user.find(params[:id])
    if @user.nil?
      render_404
    else
      user_success(@user)
    end
  end

  def index
    @user = User.all
    if @user.nil?
      render_404 
    else
      users_success(@user)
    end
  end
  
  private
  
  def user_params
    params.permit(:email, :password)
  end
end
