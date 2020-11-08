class FixDepatureSpelling < ActiveRecord::Migration[5.2]
  def change
    rename_column :flights, :depature_time, :departure_time
  end
end
