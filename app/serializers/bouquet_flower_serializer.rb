class BouquetFlowerSerializer < ActiveModel::Serializer
  attributes :id

  has_one :bouquet
  has_one :flower
end
