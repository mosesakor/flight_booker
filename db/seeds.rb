# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all
Flight.delete_all

# Populate airport names
Airport.create(code: 'NYC')
Airport.create(code: 'SFC')
Airport.create(code: 'LOS')
Airport.create(code: 'TX')
Airport.create(code: 'LA')

departure = -> { Time.now + rand(10_000) }
arrival = -> { Time.now + rand(70_000)}

airports = Airport.all.to_a.permutation(2).to_a

airports.sample(5).each do |id|
  Flight.create(from_airport: id[0], to_airport: id[1], arrival_time: arrival.call, departure_time: departure.call)
end
