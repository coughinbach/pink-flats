# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
Flat.destroy_all
User.destroy_all

p "creating users"
  user1 = User.create(email: Faker::Internet.email, password: "password", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  user2 = User.create(email: Faker::Internet.email, password: "password", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  user3 = User.create(email: Faker::Internet.email, password: "password", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

p "users - done"

p "creating flats"
  url = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511947946/loft-1_xjevxj.jpg" 
  flat1 = Flat.new(address: "105 rue des dames 75017 Paris", rooms: "2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 40, name: "Villa")
  flat1.user = user1
  flat1.remote_photo_url = url
  flat1.save!

  flat2 = Flat.new(address: "12 rue Emilio Castelar 75012 Paris", rooms: "1", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 50, name: "Chateau")
  flat2.user = user1
  flat2.remote_photo_url = url
  flat2.save!

  flat3 = Flat.new(address: "16 villa Gaudelet 75011 Paris", rooms: "4", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 100, name: "Maison")
  flat3.user = user1
  flat3.remote_photo_url = url
  flat1.save!  
p "flats - done"

p "creating bookings"
  booking1 = Booking.new(user_id: 1, flat_id: 1, nights: "8", start_date: "21/12/2015", end_date: "29/12/2015", guests: 4)
  booking2 = Booking.new(user_id: 1, flat_id: 1, nights: "2", start_date: "18/01/2016", end_date: "20/02/2016", guests: 3)
  booking3 = Booking.new(user_id: 1, flat_id: 1, nights: "4", start_date: "02/02/2016", end_date: "06/02/2016", guests: 1)
  booking1.save
  booking2.save
  booking3.save

p "bookings - done"
