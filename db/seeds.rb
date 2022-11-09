# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
indian_accent = { name: 'Indian Accent', address: '21, The Lodhi', phone_number: '+91 9999911111', category: 'chinese' }
big_chill = { name: 'Big Chill', address: '31, Khan Market', phone_number: '+91 9999911112', category: 'italian' }
have_more = { name: 'Have More', address: '41, Pandara Market', phone_number: '+91 9999911113', category: 'japanese' }
moti_mahal = { name: 'Moti Mahal', address: '51, Daryaganj', phone_number: '+91 9999911114', category: 'french' }
chez_gautam = { name: 'Chez Gautam', address: '61, Meherchand', phone_number: '+91 9999911115', category: 'belgian' }

[indian_accent, big_chill, have_more, moti_mahal, chez_gautam].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
