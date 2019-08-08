class BouquetFlowersController < ApplicationController

  def index
    bouquet_flowers = BouquetFlower.all
    render json: bouquet_flowers
  end

  def create
    bouquet_flower = BouquetFlower.create(bf_params)
  end

  private
  # 
  # def bf_params
  #   params.permit
  # end
end
