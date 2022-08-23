# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "sart seeding"

puts "destroy old data"
Service.destroy_all
User.destroy_all
puts "old data destroyed"

puts "create user"
user1 = User.create!(email: "sds@gmail.com", username: "Jo", password: "azerty", first_name: "john", last_name: "do")
user2 = User.create!(email: "abcde@gmail.com", username: "ab", password: "azerty", first_name: "abc", last_name: "de")

puts "create services"
service1 = Service.create!(name: "lady gaga", category: "concert", price: 200, user_id: user1.id)

puts "create bookings"
booking1 = Booking.create!(start_date: "2022-10-11", end_date: "2022-10-12", user_id: user2.id, service_id: service1.id )
puts "all done"
