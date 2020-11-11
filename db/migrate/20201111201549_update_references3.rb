class UpdateReferences3 < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :passenger_id

    add_reference :bookings, :flight
  end
end
