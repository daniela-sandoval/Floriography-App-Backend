class BouquetFlower < ApplicationRecord
  belongs_to :bouquet, dependent: :destroy
  belongs_to :flower
end
