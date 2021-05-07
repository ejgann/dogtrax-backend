class Dog < ApplicationRecord
  belongs_to :owner, optional: true, dependent: :destroy
  has_many :reports
  has_many :walkers, through: :reports 

  accepts_nested_attributes_for :owner


  # def owner_attributes=(owner_params)
  #   owner = Owner.find_or_create_by(owner_params)
  #   owner.valid? ? self.owner = owner : self.owner 
  # end


  
end
