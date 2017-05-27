class Deal < ApplicationRecord

  belongs_to :venue
  has_and_belongs_to_many :days


  def print_days
    days = ''
    self.days.each do |day|
      days += day.name + ' '
    end

    days
  end
end
