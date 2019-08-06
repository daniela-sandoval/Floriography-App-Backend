class BouquetFlowersController < ApplicationController

  def index
    bouquet_flowers = BouquetFlower.all
    render json: bouquet_flowers
  end
  
end
