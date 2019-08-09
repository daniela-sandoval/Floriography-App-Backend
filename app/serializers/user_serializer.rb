class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bouquets

  def bouquets
    array = []
    object.bouquets.map do |bouquet|
      bouquetHash = {}
      bouquetHash[:id] = bouquet.id
      bouquetHash[:name] = bouquet.name
      bouquetHash[:bouquet_flowers] = []
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
