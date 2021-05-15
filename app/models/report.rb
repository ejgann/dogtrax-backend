class Report < ApplicationRecord
  belongs_to :dog, dependent: :destroy


end
