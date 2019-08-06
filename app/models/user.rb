class User < ApplicationRecord
  has_secure_password

  has_many :bouquets
  has_many :favorites
  has_many :favorited_bouquets, through: :favorites, class_name: 'Bouquet'
end
