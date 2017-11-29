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
  url1 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511956719/flat-2_ap73k7.jpg"
  flat1 = Flat.new(address: "105, rue des Dames - 75017 Paris", rooms: "2", description: "Large room with garden view, wooden flooring, private toilet/shower, work table, closet, SatTV, AC/ heater, small locker, tea/coffee maker, free wifi. Located centrally just off main road has easy access to transport, restaurants, tourist spots. The room is part of a villa located in central part of Jaipur, has within one-two kilometer good restaurants, Fast food outlets, Post office, tourist office, major market, the old city of Jaipur, ATMs, etc. The room is on ground floor with bathrooms ensuite and is suitable for two persons. Just a short walk brings you to the main city center with access to all kinds of transport and facilities.", price: 43, name: "Pinky Villa")
  flat1.user = user1
  flat1.save!
  flat1.remote_photo_url = url1
  url2 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511956719/flat-3_nngsc0.jpg"
  flat2 = Flat.new(address: "12, rue Emilio Castelar - 75012 Paris", rooms: "1", description: "A bright & spacious loft, featuring an exterior rooftop patio & BBQ, perfect for enjoying the sunny days of summer outside. This unique space is great for lovers who want to spend a hoy & quality stay at the center of everything. Our building has a lot of character. It's a typical plateau home built in the late 1800's and the loft feels SPACIOUS, the ceilings are very high and it has a lot of natural light because of the SKY LIGHTS. The place features lots of ORIGINAL ARTWORK and we have recently installed AIR CONDITIONING in the unit to keep you cool during the warmer summer days.", price: 66, name: "Lovely Flat")
  flat2.user = user1
  flat2.save!
  flat2.remote_photo_url = url2
  url3 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511956719/flat-1_eiqljy.jpg"
  flat3 = Flat.new(address: "16, Villa Gaudelet - 75011 Paris", rooms: "4", description: "It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis. It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis and sand so white, away from the crowds that are perfect for sunbathing and relaxing.", price: 113, name: "Incredible stay @ love place")
  flat3.user = user1
  flat3.save!
  flat3.remote_photo_url = url3
  url4 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511964632/flat-4_bxe6hq.jpg"
  flat4 = Flat.new(address: "38, rue de Bellechasse - 75007 Paris", rooms: "3", description: "Large room with garden view, wooden flooring, private toilet/shower, work table, closet, SatTV, AC/ heater, small locker, tea/coffee maker, free wifi. Located centrally just off main road has easy access to transport, restaurants, tourist spots. The room is part of a villa located in central part of Jaipur, has within one-two kilometer good restaurants, Fast food outlets, Post office, tourist office, major market, the old city of Jaipur, ATMs, etc. The room is on ground floor with bathrooms ensuite and is suitable for two persons. Just a short walk brings you to the main city center with access to all kinds of transport and facilities.", price: 211, name: "Eiffel Super Flat")
  flat4.user = user1
  flat4.save!
  flat4.remote_photo_url = url4
  url5 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511964632/flat-5_ccoqz6.jpg"
  flat5 = Flat.new(address: "139, rue de Rennes - 75006 Paris", rooms: "2", description: "A bright & spacious loft, featuring an exterior rooftop patio & BBQ, perfect for enjoying the sunny days of summer outside. This unique space is great for lovers who want to spend a hoy & quality stay at the center of everything. Our building has a lot of character. It's a typical plateau home built in the late 1800's and the loft feels SPACIOUS, the ceilings are very high and it has a lot of natural light because of the SKY LIGHTS. The place features lots of ORIGINAL ARTWORK and we have recently installed AIR CONDITIONING in the unit to keep you cool during the warmer summer days.", price: 98, name: "Secret Villa in Panam")
  flat5.user = user1
  flat5.save!
  flat5.remote_photo_url = url5
  url6 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511964632/flat-6_ybwsv0.jpg"
  flat6 = Flat.new(address: "10, rue Boizot - 92310 Sèvres", rooms: "4", description: "It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis. It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis and sand so white, away from the crowds that are perfect for sunbathing and relaxing.", price: 113, name: "Incredible stay @ love place")
  flat6.user = user1
  flat6.save!
  flat6.remote_photo_url = url6
p "flats - done"

p "creating bookings"
  booking1 = Booking.new(user_id: 1, flat_id: 1, nights: "8", start_date: "21/12/2015", end_date: "29/12/2015", guests: 4)
  booking2 = Booking.new(user_id: 1, flat_id: 1, nights: "2", start_date: "18/01/2016", end_date: "20/02/2016", guests: 3)
  booking3 = Booking.new(user_id: 1, flat_id: 1, nights: "4", start_date: "02/02/2016", end_date: "06/02/2016", guests: 1)
  booking1.save
  booking2.save
  booking3.save

p "bookings - done"
