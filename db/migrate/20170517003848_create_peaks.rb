class CreatePeaks < ActiveRecord::Migration[5.0]
  def change
    create_table :peaks do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
