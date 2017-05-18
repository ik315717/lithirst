class CreateOpenSpans < ActiveRecord::Migration[5.0]
  def change
    create_table :open_spans do |t|
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
