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
      flash[:success] = 'Booking confirmation emails have been sent to each passenger.'
      send_thank_you_email
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

  def send_thank_you_email
    PassengerMailer.with(passengers: @booking.passengers,
                         flight: @booking.flight)
                   .thank_you_email
                   .deliver_now
  end
end
