# frozen_string_literal: true

# Flight model
class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  def self.departure_times
    all.select(:departure_time)
       .distinct
       .order(:departure_time, :asc)
  end

  def formatted_date
    departure_time.strftime('at %H:%M on %m/%d/%Y')
  end
end
