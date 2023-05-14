class ApplicationController < ActionController::API
  def users_success(users)
    render status: 200, json: {
      data: users
    }
  end

  def user_success(user)
    render status: 200, json: {
      id: user.id,
      email: user.email,
      password: user.password
    }
  end


  def render_400
    render status: 400, json: {
      message: BadRequest
    }
  end

  def render_404
    render status: 404, json: {
      message: SessionError
    }
  end

  def render_500
    render status: 500, json: {
      message: InternalServerError 
    }
  end

end
