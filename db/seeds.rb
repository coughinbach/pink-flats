# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Review.destroy_all
Booking.destroy_all
Flat.destroy_all
User.destroy_all


p "creating users"
  user1 = User.create(email: Faker::Internet.email, password: "password", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  user2 = User.create(email: Faker::Internet.email, password: "password", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  user3 = User.create(email: Faker::Internet.email, password: "password", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

p "users - done"

p "creating flats"
  url1 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1512041034/michael-d-beckwith-258305_kjckdx.jpg"
  flat1 = Flat.new(address: "105, rue des Dames - 75017 Paris", guests: "2", description: "Large room with garden view, wooden flooring, private toilet/shower, work table, closet, SatTV, AC/ heater, small locker, tea/coffee maker, free wifi. Located centrally just off main road has easy access to transport, restaurants, tourist spots. The room is part of a villa located in central part of Jaipur, has within one-two kilometer good restaurants, Fast food outlets, Post office, tourist office, major market, the old city of Jaipur, ATMs, etc. The room is on ground floor with bathguests ensuite and is suitable for two persons. Just a short walk brings you to the main city center with access to all kinds of transport and facilities.", price: 43, name: "Fairytale Castle")
  flat1.user = user1
  flat1.remote_photo_url = url1
  flat1.save!

  url2 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1512041036/neonbrand-381372_hozxae.jpg"
  flat2 = Flat.new(address: "12, rue Emilio Castelar - 75012 Paris", guests: "1", description: "A bright & spacious loft, featuring an exterior rooftop patio & BBQ, perfect for enjoying the sunny days of summer outside. This unique space is great for lovers who want to spend a hoy & quality stay at the center of everything. Our building has a lot of character. It's a typical plateau home built in the late 1800's and the loft feels SPACIOUS, the ceilings are very high and it has a lot of natural light because of the SKY LIGHTS. The place features lots of ORIGINAL ARTWORK and we have recently installed AIR CONDITIONING in the unit to keep you cool during the warmer summer days.", price: 66, name: "Romantic appartment")
  flat2.user = user1
  flat2.remote_photo_url = url2
  flat2.save!

  url3 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511956719/flat-1_eiqljy.jpg"
  flat3 = Flat.new(address: "5 rue Sainte Catherine 69001 Lyon", guests: "4", description: "It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis. It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis and sand so white, away from the crowds that are perfect for sunbathing and relaxing.", price: 113, name: "Secret log cabin")
  flat3.user = user1
  flat3.remote_photo_url = url3
  flat3.save!

  url4 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1512041033/alisha-hieb-364487_ewmp04.jpg"
  flat4 = Flat.new(address: "38, rue de Bellechasse - 75007 Paris", guests: "3", description: "Large room with garden view, wooden flooring, private toilet/shower, work table, closet, SatTV, AC/ heater, small locker, tea/coffee maker, free wifi. Located centrally just off main road has easy access to transport, restaurants, tourist spots. The room is part of a villa located in central part of Jaipur, has within one-two kilometer good restaurants, Fast food outlets, Post office, tourist office, major market, the old city of Jaipur, ATMs, etc. The room is on ground floor with bathguests ensuite and is suitable for two persons. Just a short walk brings you to the main city center with access to all kinds of transport and facilities.", price: 211, name: "Arty Loft")
  flat4.user = user1
  flat4.remote_photo_url = url4
  flat4.save!

  url5 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511964632/flat-6_ybwsv0.jpg"
  flat5 = Flat.new(address: "139, rue de Rennes - 75006 Paris", guests: "2", description: "A bright & spacious loft, featuring an exterior rooftop patio & BBQ, perfect for enjoying the sunny days of summer outside. This unique space is great for lovers who want to spend a hoy & quality stay at the center of everything. Our building has a lot of character. It's a typical plateau home built in the late 1800's and the loft feels SPACIOUS, the ceilings are very high and it has a lot of natural light because of the SKY LIGHTS. The place features lots of ORIGINAL ARTWORK and we have recently installed AIR CONDITIONING in the unit to keep you cool during the warmer summer days.", price: 98, name: "Cozy Chalet")
  flat5.user = user1
  flat5.remote_photo_url = url5
  flat5.save!

  url6 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1511964632/flat-5_ccoqz6.jpg"
  flat6 = Flat.new(address: "10, rue Boizot - 92310 Sèvres", guests: "2", description: "It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis. It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis and sand so white, away from the crowds that are perfect for sunbathing and relaxing.", price: 72, name: "Mediterranean Mansion")
  flat6.user = user1
  flat6.remote_photo_url = url6
  flat6.save!

  url7 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1512041033/markus-spiske-37931_fklfni.jpg"
  flat7 = Flat.new(address: "3 rue de l'arbre sec 69001 Lyon", guests: "1", description: "It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis. It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis and sand so white, away from the crowds that are perfect for sunbathing and relaxing.", price: 80, name: "Modern Luxury")
  flat7.user = user1
  flat7.remote_photo_url = url7
  flat7.save!

  url8 = "http://res.cloudinary.com/dp7vcrxlv/image/upload/v1512041037/jessica-furtney-244838_w2lmqq.jpg"
  flat8 = Flat.new(address: "27 Rue de la République, 69002 Lyon", guests: "2", description: "It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis. It is located in the western part of the island that is located Lembongan very strategic because it is located between two beaches has its own beauty unparalleled in Lembongan the “Dream Beach”. Is just 20 meters from the small beach full of exotis and sand so white, away from the crowds that are perfect for sunbathing and relaxing.", price: 110, name: "Southern Charm")
  flat8.user = user1
  flat8.remote_photo_url = url8
  flat8.save!
p "flats - done"

p "creating bookings"
  booking1 = Booking.new(user_id: 1, flat_id: 1, nights: "8", start_date: "21/12/2015", end_date: "29/12/2015", guests: 4)
  booking2 = Booking.new(user_id: 1, flat_id: 1, nights: "2", start_date: "18/01/2016", end_date: "20/02/2016", guests: 3)
  booking3 = Booking.new(user_id: 1, flat_id: 1, nights: "4", start_date: "02/02/2016", end_date: "06/02/2016", guests: 1)
  booking1.save
  booking2.save
  booking3.save

p "bookings - done"

p "creating reviews"
  review1 = Review.new(content: Faker::HowIMetYourMother.quote, rating: Faker::Number.between(1, 5), flat: flat1, user: user1)
  review2 = Review.new(content: Faker::HowIMetYourMother.quote, rating: Faker::Number.between(1, 5), flat: flat2, user: user2)
  review3 = Review.new(content: Faker::HowIMetYourMother.quote, rating: Faker::Number.between(1, 5), flat: flat3, user: user3)
  review4 = Review.new(content: Faker::HowIMetYourMother.quote, rating: Faker::Number.between(1, 5), flat: flat4, user: user1)
  review5 = Review.new(content: Faker::HowIMetYourMother.quote, rating: Faker::Number.between(1, 5), flat: flat5, user: user2)
  review6 = Review.new(content: Faker::HowIMetYourMother.quote, rating: Faker::Number.between(1, 5), flat: flat6, user: user3)
  review1.save!
  review2.save!
  review3.save!
  review4.save!
  review5.save!
  review6.save!

p "reviews - done"
