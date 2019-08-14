class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :favoritor, :bouquet_id, :name, :user, :bouquet_flowers

  def bouquet_flowers
    array = []
    object.bouquet.bouquet_flowers.map do |b_flower|
      bFlowerHash = {}
      bFlowerHash[:name] = b_flower.flower.name
      bFlowerHash[:meaning] = b_flower.flower.meaning
      bFlowerHash[:img_url] = b_flower.flower.img_url
      array.push(bFlowerHash)
    end
    return array
  end

  def favoritor
    object.user.username
  end

  def user
    x = {}
    x[:user_id] = object.user.id
    x[:user_name] = object.bouquet.user.username
    return x
  end

  def name
    object.bouquet.name
  end

end
