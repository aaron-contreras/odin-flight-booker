# frozen_string_literal: true

class Booking < ApplicationRecord
  belongs_to :flight
  has_one :departure_airport, through: :flight
  has_one :arrival_airport, through: :flight
  has_and_belongs_to_many :passengers, dependent: :destroy

  accepts_nested_attributes_for :passengers
end
