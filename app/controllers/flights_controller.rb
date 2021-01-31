# frozen_string_literal: true

# Controller for the Flights resource
class FlightsController < ApplicationController
  def index
    @flights = Flight.where(flight_params) unless flight_params.empty?
  end

  private

  def flight_params
    params.permit(:departure_airport_id, :arrival_airport_id, :departure_date)
  end
end
