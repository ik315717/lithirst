class AddVenueIdToDeals < ActiveRecord::Migration[5.0]
  def change
    add_column :deals, :venue_id, :int
  end
end
