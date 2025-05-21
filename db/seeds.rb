# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
five_guys = Restaurant.create!(name: "Five Guys", address:"East London", phone_number:"12345678903", category:"belgian")
dixy = Restaurant.create!(name: "Dixy", address:"North London", phone_number:"09876543212", category:"french")
mickey = Restaurant.create!(name: "Mickey", address:"South London", phone_number:"09898987876", category:"japanese")
pizza_hut = Restaurant.create!(name: "Pizza Hut", address:"West London", phone_number:"76876543434", category:"italian")
happy_valley = Restaurant.create!(name: "Happy Valley", address:"North London", phone_number:"98767898789", category:"chinese")

puts "Finished!"