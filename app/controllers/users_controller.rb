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

  def send_email
    # need the person(id), the reciever email, and the bouquet ID
    sender = User.find(params[:user_id])
    reciever = params[:email_to]
    bouquet = Bouquet.find(params[:bouquet])
    BouquetMailer.email_bouquet(sender, reciever, bouquet).deliver_now
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.permit(:username, :password, :email)
  end

end
