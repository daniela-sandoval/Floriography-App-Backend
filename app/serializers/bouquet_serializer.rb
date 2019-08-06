class BouquetSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_one :user
  has_many :bouquet_flowers

end
