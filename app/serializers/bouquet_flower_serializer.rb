class BouquetFlowerSerializer < ActiveModel::Serializer
  attributes :id, :flower, :bouquet
  # has_one :flower
end
