class Dog < ApplicationRecord
  belongs_to :owner
  has_many :reports
  has_many :walkers, through: :reports 
end
