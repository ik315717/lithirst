class RemoveDayFromDeal < ActiveRecord::Migration[5.0]
  def change
    remove_column :deals, :day, :string
  end
end
