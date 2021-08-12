class AddFlightReferenceToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :flight, null: false
  end
end
