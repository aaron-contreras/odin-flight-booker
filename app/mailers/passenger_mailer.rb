# frozen_string_literal: true

# Mailer for passenger booking confirmation
class PassengerMailer < ApplicationMailer
  def thank_you_email
    @passengers = params[:passengers]
    @flight = params[:flight]

    recipients = @passengers.map do |passenger|
      email_address_with_name(passenger.email, passenger.name)
    end

    mail(to: recipients, subject: 'Booking confirmation')
  end
end
