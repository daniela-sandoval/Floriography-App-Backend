class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  has_many :bouquets, dependent: :destroy
  has_many :favorites
  has_many :favorited_bouquets, through: :favorites, class_name: 'Bouquet'
end
