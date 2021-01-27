# frozen_string_literal: true

# Changes departure_time column to a date type instead of datetime
class ChangeDepartureTimeToDepartureDateOnFlights < ActiveRecord::Migration[6.1]
  def change
    change_table :flights do |t|
      t.rename :departure_time, :departure_date
      t.change :departure_date, :date
    end
  end
end
