class Report < ApplicationRecord
  belongs_to :dog, dependent: :destroy
  belongs_to :walker, dependent: :destroy



end
