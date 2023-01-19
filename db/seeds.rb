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

  10.times do |i|
    User.create!(
      email: "#{i+1}@gmail.com",
      password: 123456
    )
    puts "User N.#{i+1} Created"
  end

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
