# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create test airports

puts 'Creating airports'
puts '================='

# Airports gem's iata_codes method fetches all IATA codes for airports
# around the world.
Airports.iata_codes.take(50).each { |code| Airport.create!(code: code) }

puts 'Created airports'
puts '================='
