class Day < ApplicationRecord
  has_and_belongs_to_many :deals
end
