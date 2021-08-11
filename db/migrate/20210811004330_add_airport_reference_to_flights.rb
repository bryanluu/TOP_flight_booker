class AddAirportReferenceToFlights < ActiveRecord::Migration[6.1]
  def change
    add_reference :flights, :from_airport, null: false, foreign_key: { to_table: :airports }
    add_reference :flights, :to_airport, null: false, foreign_key: { to_table: :airports }
  end
end
