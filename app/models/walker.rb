class Walker < ApplicationRecord
    has_many :reports
    has_many :dogs, through: :reports
end
