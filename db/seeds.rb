# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.destroy_all
4.times{

  flat = Flat.new(name: Faker::Company.name,
                    address: Faker::Address.street_address,
                    description: Faker::Lorem.paragraph(sentence_count: 3),
                    price_per_night: rand(0..100),
                    number_of_guests: rand(0..10))
  flat.save
}