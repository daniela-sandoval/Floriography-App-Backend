class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if user.valid?
      render json: {id: user.id, username: user.username, email: user.email, token: encode_token(user)}
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def profile
    render json: super_current_user.to_json(include: {
          bouquets: {include: :bouquet_flowers}
        })
  end

  def index
    users = User.all
    render json: users
  end

  private

  def user_params
    params.permit(:username, :password, :email)
  end

end
