class AddEndTimeToDeals < ActiveRecord::Migration[5.0]
  def change
    add_column :deals, :end_time, :time
  end
end
