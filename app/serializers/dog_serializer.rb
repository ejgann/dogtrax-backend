class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :breed, :notes, :ownerInfo

  has_many :reports

  def ownerInfo
    combined_info = object.owner.name + ', ' + object.owner.phone + ', ' + object.owner.email
    return combined_info
  end

end
