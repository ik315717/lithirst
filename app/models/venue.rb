class Venue < ApplicationRecord
  has_many :deals, dependent: :destroy
  
end
