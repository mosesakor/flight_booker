class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @from_airport = Airport.find(@flight.from_airport_id)
    @to_airport = Airport.find(@flight.to_airport_id)
    passenger_count = params[:passengers].to_i
    passenger_count.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    
    @booking.save
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[name email])
  end
end
