class FlightsController < ApplicationController

  def index
    @flights = Flight.all
  end


  private

  def flight_params
    params.require(:flight).permit(:from_airport_id, :to_airport_id, :code, :id)
  end
end
