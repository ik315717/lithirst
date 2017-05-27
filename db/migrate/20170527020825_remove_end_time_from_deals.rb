class RemoveEndTimeFromDeals < ActiveRecord::Migration[5.0]
  def change
    remove_column :deals, :end_time
  end
end
