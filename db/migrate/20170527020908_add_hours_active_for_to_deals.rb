class AddHoursActiveForToDeals < ActiveRecord::Migration[5.0]
  def change
    add_column :deals, :active_time, :decimal
  end
end
