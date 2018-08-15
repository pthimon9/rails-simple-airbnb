# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

new_flat = Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
new_flat.save

10.times do
  new_name = "#{Faker::Dessert.flavor}#{%w('flat', 'residence', 'villa', 'house', 'palace').sample}"
  new_flat = Flat.create!(
    name: new_name,
    address: Faker::Address.full_address,
    description: Faker::HowIMetYourMother.quote,
    price_per_night: (50 + Random.rand(200)),
    number_of_guests: (Random.rand(5))
  )
  new_flat.save
end
