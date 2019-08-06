class FlowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :adjective, :tone

  def adjective
    {adjective_id: self.object.adjective.id, adjective_name: self.object.adjective.name}
  end

  def tone
    {tone_id: self.object.adjective.tone.id, tone_name: self.object.adjective.tone.name}
  end


end
