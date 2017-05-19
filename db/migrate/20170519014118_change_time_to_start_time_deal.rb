class ChangeTimeToStartTimeDeal < ActiveRecord::Migration[5.0]
  def change
    rename_column :deals, :time, :start_time
  end
end
