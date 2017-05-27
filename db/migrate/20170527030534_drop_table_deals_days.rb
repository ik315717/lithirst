class DropTableDealsDays < ActiveRecord::Migration[5.0]
  def change
    drop_table :deals_days
  end
end
