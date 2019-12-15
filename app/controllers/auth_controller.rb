class AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    is_authenticated = user.authenticate(params[:password]) if user
    if is_authenticated
      # byebug
      render json: { token: encode_token(user) }
    else
      render json: { errors: ["Wrong username or password, PAL. Sorry!"] }, status: :unprocessable_entity
    end
  end
end
