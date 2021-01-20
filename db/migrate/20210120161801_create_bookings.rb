# frozen_string_literal: true

# Creates the bookings table in the database
class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
