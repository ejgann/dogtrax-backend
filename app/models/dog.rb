class Dog < ApplicationRecord
  has_many :reports
  has_many :walkers, through: :reports 

end
