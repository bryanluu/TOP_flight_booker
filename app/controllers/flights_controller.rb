class FlightsController < ApplicationController
  def index
    @cities = Airport.all.map { |a| a.airport_code }
    @dates = flight_dates
  end

  def flight_dates
    Flight.all.map { |f| f.start.noon.to_datetime.strftime('%d/%m/%Y') }.uniq.sort
  end
end
