class AddPassengerReferenceToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :passenger, null: false
  end
end
