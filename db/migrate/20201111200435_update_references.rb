class UpdateReferences < ActiveRecord::Migration[5.2]
  def change
    add_reference :passengers, :bookings, foreign_key: true
    add_reference :bookings, :passengers, foreign_key: true
  end
end
