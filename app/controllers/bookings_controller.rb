class BookingsController < ApplicationController
  def new
    if params['flight_id'].empty?
      redirect_to '/flights'
    end

    @passenger = Passenger.new
  end

  def create
    puts params
  end

  private

  def booking_params
    params.require(:passenger).permit(:name, :email)
  end
end
