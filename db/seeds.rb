# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
# TODO: Write a seed to insert 100 posts in the database
puts 'creating 5 fake flats...'
5.times do
  flat = Flat.new(
    name: ["awesome", "tiny", "lightful", "renoved"].sample + " flat",
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(30..300),
    number_of_guests: rand(1..9)
  )
  flat.save!
end
puts "finished!"