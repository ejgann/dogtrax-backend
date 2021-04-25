class WalkerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :reports
end
