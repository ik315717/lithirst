class AddDayTimeToDeals < ActiveRecord::Migration[5.0]
  def change
    add_column :deals, :day, :string
    add_column :deals, :time, :time
  end
end
