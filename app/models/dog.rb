class Dog < ApplicationRecord
  belongs_to :owner, dependent: :destroy
  has_many :reports
  has_many :walkers, through: :reports 
end
