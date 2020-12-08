# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '-- Start seed - Restaurants'
arr = %w(chinese italian japanese french belgian)
10.times do |i|
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: arr.sample)
    puts  "Restaurant: #{i}"
end
puts '-- End seed - Restaurant'

puts '-- Start seed - Reviews'
Restaurant.all.each do |restaurant|
  arr = [0, 1, 2, 3, 4, 5]
  reviews = arr.sample.to_i
  reviews.times do |i|
    Review.create(
      rating: arr.sample,
      content: Faker::Restaurant.review,
      restaurant_id: restaurant.id
    )
    puts "Restaurant: #{restaurant.id}, review: #{i}/#{reviews}"
  end
  puts ""
end
puts '-- End seed - Reviews'
