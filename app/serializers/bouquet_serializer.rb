class BouquetSerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :bouquet_flowers

  def bouquet_flowers
    array = []
    object.bouquet_flowers.map do |b_flower|
      bHash = {}
      bHash[:name] = b_flower.flower.name
      bHash[:meaning] = b_flower.flower.meaning
      bHash[:img_url] = b_flower.flower.img_url
      array.push(bHash)
    end
    return array
  end

  def user
    x = {}
    x[:user_id] = object.user.id
    x[:user_name] = object.user.username
    return x
  end

end
