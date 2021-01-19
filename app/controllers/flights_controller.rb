# frozen_string_literal: true

# Controller for the Flights resource
class FlightsController < ApplicationController
  def index
    @flights = Flight.where(departure_airport_id: params[:departure_airport],
                            arrival_airport_id: params[:arrival_airport],
                            departure_date: params[:departure_date])
  end
end
