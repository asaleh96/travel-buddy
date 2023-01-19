# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Deleting previously seeded data

puts "Dropping all previous data..."
Trip.destroy_all
User.destroy_all

puts "Data successfully dropped!"

  # 1. Creating Users

puts "Creating Users..."

puts "Creating n.1 User"
user1 = User.create!(
  email: "#1@gmail.com",
  first_name: "Luke",
  last_name: "Skywalker",
  gender: "Male",
  dob: "12/31/1991",
  location: "London",
  password: "123456",
  user_name: "luke",
  user_trips_id: 1
)
puts "User n.1 - username: #{user1.user_name} - was created. "

puts "Creating n.2 User"
user2 = User.create!(
  email: "2@gmail.com",
  first_name: "Marty",
  last_name: "McFly",
  gender: "Male",
  dob: "03/11/1999",
  location: "London",
  password: "123456",
  user_name: "marty",
  user_trips_id: 2
)
puts "User n.2 - username: #{user2.user_name} - was created. "

puts "Creating n.3 User"
user3 = User.create!(
  email: "3@gmail.com",
  first_name: "Travis",
  last_name: "Bickle",
  gender: "Male",
  dob: "05/28/1996",
  location: "London",
  password: "123456",
  user_name: "travis"
)
puts "User n.3 - username: #{user3.user_name} - was created. "

puts "Creating n.4 User"
user4 = User.create!(
  email: "4@gmail.com",
  first_name: "Beatrix",
  last_name: "Kiddo",
  gender: "Female",
  dob: "10/10/1994",
  location: "London",
  password: "123456",
  user_name: "beatrix"
)
puts "User n.4 - username: #{user4.user_name} - was created. "

puts "Creating n.5 User"
user5 = User.create!(
  email: "5@gmail.com",
  first_name: "Sibilla",
  last_name: "Cooman",
  gender: "Female",
  dob: "05/01/1994",
  location: "London",
  password: "123456",
  user_name: "sibilla"
)
puts "User n.5 - username: #{user5.user_name} - was created. "

puts "Creating n.6 User"
user6 = User.create!(
  email: "6@gmail.com",
  first_name: "Talisa",
  last_name: "Maegyr",
  gender: "Female",
  dob: "13/02/1996",
  location: "London",
  password: "123456",
  user_name: "talisa"
)
puts "User n.6 - username: #{user6.user_name} - was created. "



# 2. Creating trips

  puts "Creating Trips..."

  puts "Creating Trip N.1"
  trip1 = Trip.create!(
    location: 'Japan',
    start_date: '25/06/2023',
    end_date: '10/07/2023',
    name: 'Trip to Kyoto and Osaka',
    description: 'Join me for a two weeks trip to Japan! I would love to visit Kyoto and Osaka, but I am happy to include
                  other destinations. Dates are flexible too!',
    budget: 2500
  )

  puts "Trip N.1 to #{trip1.location} Created"

  puts "Creating Trip N.2"
  trip2 = Trip.create!(
    location: 'Colombia',
    start_date: '01/05/2023',
    end_date: '21/05/2023',
    name: "Let's visit Colombia!",
    description: 'Looking for a group of buddies to join me for a trip to Colombia in April, May or June 2023.
                  Currently the plan includes Bogotá, Medellín and Cartagena.',
    budget: 2100
  )

  puts "Trip N.2 to #{trip2.location} Created"

  puts "Creating Trip N.3"
  trip3 = Trip.create!(
    location: 'Indonesia',
    start_date: '01/03/2023',
    end_date: '10/03/2023',
    name: "Visiting Bali",
    description: '10 days to explore Sanur, Ubudd, Canggu, Nusa Penida and anything else you would like to see.
                  I am looking for buddies that will enjoy exploring, water sports and partying!',
    budget: 1500
  )

  puts "Trip N.3 to #{trip3.location} Created"

  puts "Creating Trip N.4"
  trip3 = Trip.create!(
    location: 'Mexico',
    start_date: '10/04/2023',
    end_date: '25/04/2023',
    name: "Trip to Mexico",
    description: 'I am looking for buddies to join me for a 2/3 weeks trip to Mexico. The route still needs to be defined.',
    budget: 1000
  )

  puts "Trip N.3 to #{trip3.location} Created"

  puts "Creating Trip N.5"
  trip5 = Trip.create!(
    location: 'Switzerland',
    start_date: '01/06/2023',
    end_date: '07/06/2023',
    name: "Backpacking in Switzerland",
    description: "A one week trip hiking through the most scenic routes of the best country in the world.
                  We will start from Zurich and end in the Southern part of the country (that's where the best
                  people are from. It's a fact, look it up).",
    budget: 1000
  )

  puts "Trip N.5 to #{trip5.location} Created"


  puts "All done!"
