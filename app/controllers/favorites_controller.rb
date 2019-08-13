class FavoritesController < ApplicationController

  def create
    favorite = Favorite.create(private_params)
    render json: favorite
  end

  def index
    favorites = Favorite.all
    render json: favorites
  end

  def user_favorites
    byebug
  end

  private
  def private_params
    params.permit(:user_id, :bouquet_id)
  end
end
