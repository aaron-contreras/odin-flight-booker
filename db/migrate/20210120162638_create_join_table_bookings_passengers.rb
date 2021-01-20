# frozen_string_literal: true

# Creates join table for many to many association between passengers and
# bookings
class CreateJoinTableBookingsPassengers < ActiveRecord::Migration[6.1]
  def change
    create_join_table :bookings, :passengers do |t|
      # t.index [:booking_id, :passenger_id]
      # t.index [:passenger_id, :booking_id]
    end
  end
end
