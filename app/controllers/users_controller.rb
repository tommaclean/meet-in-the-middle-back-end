class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end


  def create
    user = User.create(user_params)

    if user.valid?
      render json: { token: encode_token(user) }
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def profile
    render json: logged_in_user
  end



  private

  def user_params
    params.permit(:name, :password)
  end
end
