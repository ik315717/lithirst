class RenameActiveTimeToHoursActive < ActiveRecord::Migration[5.0]
  def change
    rename_column :deals, :active_time, :hours_active
  end
end
