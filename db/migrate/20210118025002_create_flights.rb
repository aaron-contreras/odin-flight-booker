# frozen_string_literal: true

# Create Flight model and database table
class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :arrival_airport
      t.references :departure_airport
      t.datetime :departure_time
      t.integer :duration

      t.timestamps
    end
  end
end
