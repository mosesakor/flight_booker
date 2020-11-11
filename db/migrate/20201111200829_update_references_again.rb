class UpdateReferencesAgain < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :passengers_id
    remove_column :passengers, :bookings_id

    add_reference :passengers, :booking
    add_reference :bookings, :passenger
  end
end
