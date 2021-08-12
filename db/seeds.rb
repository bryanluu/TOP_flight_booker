# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create({ airport_code: 'YVR' })
Airport.create({ airport_code: 'SFO' })
Airport.create({ airport_code: 'NYC' })
Airport.create({ airport_code: 'LAX' })
Airport.create({ airport_code: 'YYZ' })

airports = Airport.all

100.times do
  from = airports.sample
  to = from
  until to.airport_code != from.airport_code
    to = airports.sample
  end
  date = Time.now + (0..5).to_a.sample.day + (0...24).to_a.sample.hours
  Flight.create(from_airport_id: from.id, to_airport_id: to.id, start: date, duration: (60..500).to_a.sample)
end
