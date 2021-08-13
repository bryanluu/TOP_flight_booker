class BookingsController < ApplicationController
  def new
    if params['flight_id'].empty?
      redirect_to '/flights'
    end

    @passenger = Passenger.new
  end

  def create
    flight = Flight.find(params['flight_id'])
    if flight.nil?
      redirect_to :new
      return
    end

    passenger = Passenger.create(passenger_params)
    @booking = Booking.create(flight: flight, passenger: passenger)

    redirect_to @booking
  end

  def show
    @booking = Booking.find(params['id'])
  end

  private

  def passenger_params
    params.require(:passenger).permit(:name, :email)
  end
end
