class CreateDealsDays < ActiveRecord::Migration[5.0]
  def change
    create_table :deals_days do |t|
      t.references :deal, foreign_key: true
      t.references :day, foreign_key: true
    end
  end
end
