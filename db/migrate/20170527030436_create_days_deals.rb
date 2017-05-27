class CreateDaysDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :days_deals do |t|
      t.references :day, foreign_key: true
      t.references :deal, foreign_key: true
    end
  end
end
