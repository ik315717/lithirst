class AddApprovedToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :approved, :boolean, :default => false
  end
end
