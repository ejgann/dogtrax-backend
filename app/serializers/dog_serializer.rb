class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :breed, :notes

  has_many :reports

end
