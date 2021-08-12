class FlightsController < ApplicationController
  def index
    @cities = Airport.all.map { |a| a.airport_code }
    @dates = flight_dates

    @from_airport = nil
    @to_airport = nil
    @date = nil

    unless params['commit'].nil?
      @date = parse_date(params['date'])
      @from_airport = Airport.where(airport_code: params['from'])
      @to_airport = Airport.where(airport_code: params['to'])
      @flights = Flight.where(start: @date.midnight..@date.end_of_day, from_airport: @from_airport, to_airport: @to_airport)
    end
  end

  def flight_dates
    Flight.all.map { |f| f.start.noon.to_datetime.strftime('%d/%m/%Y') }.uniq.sort
  end

  def parse_date(date_str)
    DateTime.parse(date_str)
  end
end
