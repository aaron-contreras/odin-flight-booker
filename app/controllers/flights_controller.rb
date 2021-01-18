# frozen_string_literal: true

# Controller for the Flights resource
class FlightsController < ApplicationController
  def index
    @flights = Flight.where(departure_airport: params[:departure_airport],
                            arrival_airport: params[:arrival_airport],
                            departure_time: params[:departure_time])

  end
end
