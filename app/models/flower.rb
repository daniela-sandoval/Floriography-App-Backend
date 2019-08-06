class Flower < ApplicationRecord
  belongs_to :adjective

  has_many :bouquet_flowers
  has_many :bouquets, through: :bouquet_flowers
end
