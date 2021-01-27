# frozen_string_literal: true

# Flight model
class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings, dependent: :destroy

  def self.all_departure_dates
    all.select(:departure_date)
       .distinct
       .order(departure_date: :asc)
  end

  def details
    "Flight##{id} #{departure_airport.code} -> #{arrival_airport.code} on #{formatted_date}".upcase
  end

  def formatted_date
    departure_date.strftime('%m/%d/%Y')
  end
end
