class UsersController < ApplicationController
  def create
    # render json: {
    #   email: user_params[:email],
    #   password: user_params[:password]
    # }
    @user = User.new(user_params)
      if @user.save
        render json: {
            data: @user,
        }
      else
        # render_404
      end
  end

  def index
    @user = User.all
    if @user.nil?
        
    else
      render json:{
        data: @user,
      }
    end
  end
  
  private
  
  def user_params
    params.permit(:email, :password)
  end
end
