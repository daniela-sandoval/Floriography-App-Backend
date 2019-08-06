class ToneSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :adjectives
end
