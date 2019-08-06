class Adjective < ApplicationRecord
  belongs_to :tone
  has_many :flowers
end
