# frozen_string_literal: true

# Handles actions for the Bookings resource
class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight_id: params[:flight_id])
    @passengers = [Passenger.new] * params[:number_of_passengers].to_i
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
                                    passengers_attributes: %i[name email])
  end
end
