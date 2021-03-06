class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings

  def to_s
    "Flight \##{id} #{from_airport.airport_code} to #{to_airport.airport_code} @ #{start} (#{duration} minutes)"
  end
end
