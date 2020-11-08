class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :start_id
      t.integer :finish_id
      t.datetime :arrival_time
      t.datetime :depature_time

      t.timestamps
    end
  end
end
