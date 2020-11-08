class FixFlights < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :start_id, :integer
    remove_column :flights, :finish_id, :integer
    
    add_column :flights, :from_airport_id, :integer
    add_column :flights, :to_airport_id, :integer
  end
end
