class BouquetsController < ApplicationController

  def index
    bouquets = Bouquet.all
    render json: bouquets
  end
  
end
