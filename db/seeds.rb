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

Flight.create(from_airport: Airport.first, to_airport: Airport.last, arrival_time: '2020-12-31 16:45:00', departure_time: '2020-12-31 17:45:00')
Flight.create(from_airport: Airport[1], to_airport: Airport[2], arrival_time: '2020-12-31 16:49:00', departure_time: '2020-12-31 17:48:00')