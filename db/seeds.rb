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
user3 = User.create!(email: "azerty@gmail.com", username: "a", password: "azerty", first_name: "Jean-Michel", last_name: "De la boucle de mon ceinturon")


puts "create services"

service1 = Service.create!(image: "https://i0.wp.com/theb-stage.com/wp-content/uploads/2022/05/Beyonce-performs-onstage-in-2009.-Photo-by-Jason-LaVerisFilmMagic.png?zoom=2&resize=800%2C445&ssl=1", name: "Concert With Beyoncé", category: "Concert", price: 700_000, user_id: user1.id, description: "A 2 hours private concert with legendary Queen B! You can choose in advance your playlist. At the end of the show, Beyoncé will invite you to join her and sing the last song with her! Don't miss this once in a lifetime opportunity ! ")
service2 = Service.create!(image: "https://images.unsplash.com/photo-1589487391730-58f20eb2c308?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2374&q=80", name: "Dinner With Mbappé", category: "Dinner", price: 2000, user_id: user2.id, description: "With One Night Star you can offer yourself, or to a loved one, a special moment with the (second) best number 10 french football player who has ever lived. For the time of a dinner, you will be able to ask him every questions you want about his carrer, his hopes and maybe his future ! If he has any clue...")
service3 = Service.create!(image: "https://images.unsplash.com/photo-1615117972428-28de67cda58e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80", name: "Fight With McGregor", category: "Sport", price: 44000, user_id: user1.id, description: "One NightStar propose you 5 rounds of 5 minutes each versus the Notorious. Former featherweight and lightweight double-champion, McGregor will give you a true overview of what fight and pain is. You may have the oportunity to see from a close range his fists tattoos !")
service4 = Service.create!(image: "https://images.unsplash.com/photo-1631918181927-2495522c0ce3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80", name: "A Night With Sponge Bob voice actor", category: "Time", price: 10, user_id: user2.id, description: "Have you ever dream to have discution with your favorite sponge ? Well thanks to OneNightStar, your dream finally comes true ! Bob will come to any sea you want, to spent some quality time with you. He might come with Patrick or Carlos, but don't be afraid , they are as loving as Bob !")
service5 = Service.create!(image: "https://images.unsplash.com/photo-1432250767374-ee19cba37b52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2034&q=80", name: "Dinner With Kanye West", category: "Dinner", price: 990000, user_id: user1.id, description: "If you want to discuss rap, fashion, gossip or just bitch about the Kardashian around a 3 star meal, Kanye is here for you ! You will discover that the world renoun rapper is like a coconut... Hard in the outside but soft in the inside. ")
service6 = Service.create!(image: "https://images.unsplash.com/photo-1548438128-af556c2abfb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2371&q=80", name: "Footing With Jean Lassalle", category: "Sport", price: 1, user_id: user2.id, description: "The unique Jean Lassalle offers you to run a mile or two with him. In the splendid region of the Pyrénées-Atlantiques, he will show you where he started his carrer as maire of Lourdios-Ichère, witch went from 1977 to 2017 ! You will also discover where he growed up, where he used to play rugby for more than 25 years, and if you still have enough energy, you will 'visit' every restaurant, bar and vines of the region.")
service7 = Service.create!(image: "https://images.unsplash.com/photo-1583275478661-1c31970669fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80", name: "A Day With Benoit Paire", category: "Time", price: 3300, user_id: user1.id, description: "A full day with Benoit Paire, the 33 years old French tennis player from Avignon. He will spend the entire day with you, playing tennis, visiting Avignon or just chating with you about his life experiences. He never won versus Federer or Nadal but he still has interesting stories to tell about !")
service8 = Service.create!(image: "https://images.unsplash.com/photo-1643113231904-ea2af9b4ebcb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80", name: "Concert With Michael Jackson doppleganger", category: "Concert", price: 400000, user_id: user2.id, description: "For almost true pop music fan, you can have the oportunity to almost meet the King of POP ! He will play almost perfectly his favorites songs like : Believe Jean, Bite it, Smoothie Criminal or even Thrilling. He has almost convinced every one who booked him.")
service9 = Service.create!(image: "https://images.unsplash.com/photo-1562388831-a7a060b9c1fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1318&q=80", name: "Kayak With Philippe Croizon", category: "Sport", price: 900, user_id: user1.id, description: "For anyone who loves extreme condition, who likes dangerous situations, for the ones who loves ADRENALINE... One Night Star has what you need. An expedition in Perou in kayak with Philippe Croizon, the famous athlete who crossed the Manche swiming offers you a hand to visit the lake Titicaca. Sensitive heart abstain")

puts "create bookings"

booking1 = Booking.create!(start_date: "2022-10-11", end_date: "2022-10-12", user_id: user2.id, service_id: service1.id)
puts "all done"







