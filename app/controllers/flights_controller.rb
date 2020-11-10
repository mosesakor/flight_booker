class FlightsController < ApplicationController

  def index
    @ser = params[:search]
    @flights = Flight.where("from_airport_id == :from_airport AND to_airport_id == :to_airport AND id == :id",
    {from_airport: params[:from_airport_id], to_airport: params[:to_airport_id], id: params[:id]})

  end


  private

  def flight_params
    params.require(:flight).permit(:from_airport_id, :to_airport_id, :id)
  end
end
