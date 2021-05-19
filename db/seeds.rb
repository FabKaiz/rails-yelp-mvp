# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  name = Faker::Name.name
  address = Faker::Address.street_address
  phone = Faker::PhoneNumber.phone_number
  category = %w[chinese italian japanese french belgian].sample
  Restaurant.create(name: name, address: address, phone_number: phone, category: category)
end

5.times do
  content = Faker::Lorem.paragraphs
  rating = rand(6)
  Review.create(content: content, rating: rating)
end

    # t.string "name"
    # t.string "address"
    # t.string "phone_number"
    # t.string "category"