class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :breed, :notes, :owner_id

  has_many :reports
end
