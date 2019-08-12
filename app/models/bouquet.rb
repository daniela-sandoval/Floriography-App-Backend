class Bouquet < ApplicationRecord
  belongs_to :user

  has_many :favorites, :dependent => :destroy
  has_many :favorited_users, through: :favorites, class_name: 'User'

  has_many :bouquet_flowers, :dependent => :destroy
  has_many :flowers, through: :bouquet_flowers

  def makeInputBouquet(tone)
    matchedFlowers = []
    flowers = Flower.all
    # add some logic to make sure i get at LEAST 5 flowers
    matchedFlowers = flowers.select{|flower| flower.adjective.tone.name === tone}.sample(5)
    matchedFlowers.each {|flower| BouquetFlower.create(bouquet_id: self.id, flower_id: flower.id)}
  end

  def makeAdjBouquet(adjectives)
    flowers = Flower.all
    flower_types = {}
    flowers.each do |flower|
      if adjectives.include? flower.adjective.name
        if flower_types[flower.adjective.name]
          flower_types[flower.adjective.name] << flower
        else
          flower_types[flower.adjective.name] = []
          flower_types[flower.adjective.name] << flower
        end
      end
    end
    random_flowers = flower_types.map{|adj, flowers| flowers.sample}
    random_flowers.each {|flower| BouquetFlower.create(bouquet_id: self.id, flower_id: flower.id)}
  end

  def makeRandomBouquet
    flowers = Flower.all
    random_flowers = flowers.sample(5)
    random_flowers.each {|flower| BouquetFlower.create(bouquet_id: self.id, flower_id: flower.id)}
  end

end
