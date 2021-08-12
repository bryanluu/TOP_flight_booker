class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def to_s
    "#{from_airport.airport_code} to #{to_airport.airport_code} @ #{start} (#{duration} minutes)"
  end
end
