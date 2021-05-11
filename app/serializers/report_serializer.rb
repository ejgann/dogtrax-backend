class ReportSerializer < ActiveModel::Serializer
  attributes :id, :date, :pee, :poop, :comments, :dog_id, :walker_id
end
