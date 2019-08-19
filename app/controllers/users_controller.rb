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
    render json: super_current_user
  end

  def index
    users = User.all
    render json: users
  end

  def send_email
    # need the person(id), the reciever email, and the bouquet ID
    byebug
    BouquetMailer.email_bouquet(sender, reciever, bouquet)
  end

  private

  def user_params
    params.permit(:username, :password, :email)
  end

end
