# frozen_string_literal: true

# Clean slate
Airport.delete_all
Flight.delete_all

# Create test airports

puts 'Creating airports'
puts '================='

# Airports gem's iata_codes method fetches all IATA codes for airports
# around the world.
airports = Airports.iata_codes.take(50).map do |code|
  Airport.create!(code: code)
end

puts 'Created airports'
puts '================='

# Create test flights

200.times do
  departure_airport, arrival_airport = airports.sample(2)
  departure_time = rand(1..500).hours.from_now
  duration = rand(60..1440)
  Flight.create!(departure_airport: departure_airport,
                 arrival_airport: arrival_airport,
                 departure_time: departure_time,
                 duration: duration)
end
