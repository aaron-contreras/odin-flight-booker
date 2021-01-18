# frozen_string_literal: true

# Creates Airport model and database table
class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.string :code

      t.timestamps
    end
  end
end
