# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# ["ATL", "BOS", "BWI", "DEN", "CLT", "JFK", "MIA"].each do |airport_name|
#   Airport.find_or_create_by!(name: airport_name)
# end

# 5.times do |i|
#   Flight.create!(
#     arrival_ids: Airport.id, 
#     departure_ids: i + 10,
#     start: Time.current.to_i,
#     flight_duration: i + 15.0
#   )
# end

jfk = Airport.create!(name: "JFK")
bos = Airport.create!(name: "BOS")
mia = Airport.create!(name: "MIA")
den = Airport.create!(name: "DEN")

flight_1 = Flight.create!(
    arrival_airport: jfk, 
    departure_airport: bos,
    start: Time.current,
    flight_duration: 15.0
    )

flight_2 = Flight.create!(
    arrival_airport: bos, 
    departure_airport: bos,
    start: Time.current,
    flight_duration: 15.0)

flight_3 = Flight.create!(
    arrival_airport: mia, 
    departure_airport: mia,
    start: Time.current,
    flight_duration: 15.0)

flight_4 = Flight.create!(
    arrival_airport: den, 
    departure_airport: den,
    start: Time.current,
    flight_duration: 15.0)

jfk.update!(arriving_flights: flight_1, departing_flights: flight_1)
bos.update!(arriving_flights: flight_2, departing_flights: flight_2)
mia.update!(arriving_flights: flight_3, departing_flights: flight_3)
den.update!(arriving_flights: flight_4, departing_flights: flight_4)

