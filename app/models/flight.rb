# frozen_string_literal: true

# Flight model
class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  def self.departure_times
    all.select(:departure_date)
       .distinct
       .order(:departure_date, :asc)
  end

  def formatted_date
    departure_date.strftime('%m/%d/%Y')
  end
end
