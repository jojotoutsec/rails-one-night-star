# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "start seeding"

puts "destroy old data"

Booking.destroy_all
Service.destroy_all
User.destroy_all

puts "old data destroyed"

puts "create users"
user1 = User.create!(email: "sds@gmail.com", username: "Jo", password: "azerty", first_name: "john", last_name: "do")
user2 = User.create!(email: "abcde@gmail.com", username: "ab", password: "azerty", first_name: "abc", last_name: "de")

puts "create services"

service1 = Service.create!(name: "Concert With Beyoncé", category: "Concert", price: 7000000, user_id: user1.id, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel elit id dui suscipit volutpat. Morbi sit amet tortor non lacus bibendum maximus. Fusce euismod convallis volutpat. Praesent tincidunt eget libero id commodo. Curabitur sed dignissim quam, vel vestibulum felis. Proin id congue ex. In hac habitasse platea dictumst. Sed pulvinar mollis mollis. Etiam porttitor lectus ac tortor placerat sodales. Donec lectus felis, fermentum quis est non, tempor tempus nisl. Nam ut consequat velit, eget pretium lacus.")
service2 = Service.create!(name: "Dinner With Mbappé", category: "Dinner", price: 2000, user_id: user2.id, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel elit id dui suscipit volutpat. Morbi sit amet tortor non lacus bibendum maximus. Fusce euismod convallis volutpat. Praesent tincidunt eget libero id commodo. Curabitur sed dignissim quam, vel vestibulum felis. Proin id congue ex. In hac habitasse platea dictumst. Sed pulvinar mollis mollis. Etiam porttitor lectus ac tortor placerat sodales. Donec lectus felis, fermentum quis est non, tempor tempus nisl. Nam ut consequat velit, eget pretium lacus.")
service3 = Service.create!(name: "Fight With McGregor", category: "Sport", price: 44000, user_id: user1.id, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel elit id dui suscipit volutpat. Morbi sit amet tortor non lacus bibendum maximus. Fusce euismod convallis volutpat. Praesent tincidunt eget libero id commodo. Curabitur sed dignissim quam, vel vestibulum felis. Proin id congue ex. In hac habitasse platea dictumst. Sed pulvinar mollis mollis. Etiam porttitor lectus ac tortor placerat sodales. Donec lectus felis, fermentum quis est non, tempor tempus nisl. Nam ut consequat velit, eget pretium lacus.")
service4 = Service.create!(name: "A Night With Sponge Bob voice actor", category: "Time", price: 10, user_id: user2.id, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel elit id dui suscipit volutpat. Morbi sit amet tortor non lacus bibendum maximus. Fusce euismod convallis volutpat. Praesent tincidunt eget libero id commodo. Curabitur sed dignissim quam, vel vestibulum felis. Proin id congue ex. In hac habitasse platea dictumst. Sed pulvinar mollis mollis. Etiam porttitor lectus ac tortor placerat sodales. Donec lectus felis, fermentum quis est non, tempor tempus nisl. Nam ut consequat velit, eget pretium lacus.")
service5 = Service.create!(name: "Dinner With Kanye West", category: "Dinner", price: 990000000, user_id: user1.id, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel elit id dui suscipit volutpat. Morbi sit amet tortor non lacus bibendum maximus. Fusce euismod convallis volutpat. Praesent tincidunt eget libero id commodo. Curabitur sed dignissim quam, vel vestibulum felis. Proin id congue ex. In hac habitasse platea dictumst. Sed pulvinar mollis mollis. Etiam porttitor lectus ac tortor placerat sodales. Donec lectus felis, fermentum quis est non, tempor tempus nisl. Nam ut consequat velit, eget pretium lacus.")
service6 = Service.create!(name: "Footing With Jean Lassalle", category: "Sport", price: 1, user_id: user2.id, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel elit id dui suscipit volutpat. Morbi sit amet tortor non lacus bibendum maximus. Fusce euismod convallis volutpat. Praesent tincidunt eget libero id commodo. Curabitur sed dignissim quam, vel vestibulum felis. Proin id congue ex. In hac habitasse platea dictumst. Sed pulvinar mollis mollis. Etiam porttitor lectus ac tortor placerat sodales. Donec lectus felis, fermentum quis est non, tempor tempus nisl. Nam ut consequat velit, eget pretium lacus.")
service7 = Service.create!(name: "A Day With Benoit Paire", category: "Time", price: 3300, user_id: user1.id, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel elit id dui suscipit volutpat. Morbi sit amet tortor non lacus bibendum maximus. Fusce euismod convallis volutpat. Praesent tincidunt eget libero id commodo. Curabitur sed dignissim quam, vel vestibulum felis. Proin id congue ex. In hac habitasse platea dictumst. Sed pulvinar mollis mollis. Etiam porttitor lectus ac tortor placerat sodales. Donec lectus felis, fermentum quis est non, tempor tempus nisl. Nam ut consequat velit, eget pretium lacus.")
service8 = Service.create!(name: "Concert With Michael Jackson doppleganger", category: "Concert", price: 400000, user_id: user2.id, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel elit id dui suscipit volutpat. Morbi sit amet tortor non lacus bibendum maximus. Fusce euismod convallis volutpat. Praesent tincidunt eget libero id commodo. Curabitur sed dignissim quam, vel vestibulum felis. Proin id congue ex. In hac habitasse platea dictumst. Sed pulvinar mollis mollis. Etiam porttitor lectus ac tortor placerat sodales. Donec lectus felis, fermentum quis est non, tempor tempus nisl. Nam ut consequat velit, eget pretium lacus.")
service9 = Service.create!(name: "Kayak With Philippe Croizon", category: "Sport", price: 900, user_id: user1.id, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel elit id dui suscipit volutpat. Morbi sit amet tortor non lacus bibendum maximus. Fusce euismod convallis volutpat. Praesent tincidunt eget libero id commodo. Curabitur sed dignissim quam, vel vestibulum felis. Proin id congue ex. In hac habitasse platea dictumst. Sed pulvinar mollis mollis. Etiam porttitor lectus ac tortor placerat sodales. Donec lectus felis, fermentum quis est non, tempor tempus nisl. Nam ut consequat velit, eget pretium lacus.")
puts "create bookings"
booking1 = Booking.create!(start_date: "2022-10-11", end_date: "2022-10-12", user_id: user2.id, service_id: service1.id)
puts "all done"
