class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bouquets

  def bouquets
    array = []
    sortedBouquets = object.bouquets.sort{|a, b| b.created_at <=> a.created_at}
    sortedBouquets.map do |bouquet|
      bouquetHash = {}
      bouquetHash[:id] = bouquet.id
      bouquetHash[:name] = bouquet.name
      bouquetHash[:bouquet_flowers] = []
      bouquetHash[:created_at] = bouquet.created_at
      bouquet.bouquet_flowers.map do |b_flower|
        bFlowerHash = {}
        bFlowerHash[:name] = b_flower.flower.name
        bFlowerHash[:meaning] = b_flower.flower.meaning
        bFlowerHash[:img_url] = b_flower.flower.img_url
        bouquetHash[:bouquet_flowers].push(bFlowerHash)
      end
      array.push(bouquetHash)
    end
    return array
  end

end
