class FlightsController < ApplicationController
  def index
    @cities = Airport.all.map { |a| a.airport_code }
  end
end
