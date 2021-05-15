class ReportSerializer < ActiveModel::Serializer
  attributes :id, :date, :pee, :poop, :comments, :dog_id

  def date
    self.object.date.strftime("%m/%d/%Y")
  end

end
