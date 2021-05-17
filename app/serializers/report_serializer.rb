class ReportSerializer < ActiveModel::Serializer
  attributes :id, :date, :pee, :poop, :comments, :dog_id

  def formatDate
    self.object.date.strftime("%m/%d/%Y %I:%M%p")
  end

end
