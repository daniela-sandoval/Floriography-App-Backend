class AdjectiveSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_one :tone
end
