class BouquetSerializer < ActiveModel::Serializer
  attributes :id, :name, :bouquet_flowers

  has_one :user
  # has_many :bouquet_flowers

end
