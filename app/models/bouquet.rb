class Bouquet < ApplicationRecord
  belongs_to :user

  has_many :favorites, :dependent => :destroy
  has_many :favorited_users, through: :favorites, class_name: 'User'
  
  has_many :bouquet_flowers
  has_many :flowers, through: :bouquet_flowers
end
