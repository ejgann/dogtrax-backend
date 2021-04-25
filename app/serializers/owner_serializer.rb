class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone

  has_many :dogs
end
