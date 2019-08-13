class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :favoritor, :bouquet_id, :bouquet

  def bouquet
    hash = {}
    hash[:id] = object.bouquet.id
    hash[:name] = object.bouquet.name
    hash[:bouquet_flowers] = []
    object.bouquet.bouquet_flowers.map do |b_flower|
      bFlowerHash = {}
      bFlowerHash[:name] = b_flower.flower.name
      bFlowerHash[:meaning] = b_flower.flower.meaning
      bFlowerHash[:img_url] = b_flower.flower.img_url
      hash[:bouquet_flowers].push(bFlowerHash)
    end
    return hash
  end

  def favoritor
    object.user.username
  end

end
