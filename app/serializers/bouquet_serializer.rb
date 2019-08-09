class BouquetSerializer < ActiveModel::Serializer
  attributes :id, :name, :bouquet_flowers

  has_one :user

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

end
