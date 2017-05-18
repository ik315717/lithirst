class CreateDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :deals do |t|
      t.string :title
      t.string :description
      t.date :expiration

      t.timestamps
    end
  end
end
