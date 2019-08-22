# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning user database...'
User.destroy_all

puts 'Creating Users'
user1 = User.create!(
email: "ferdi@wagon.com",
password: "password",
first_name: "ferdi",
last_name: "ferdison",
admin: true
  )
puts 'Users Finished!'

puts 'Cleaning database...'
Experience.destroy_all
Airport.destroy_all

puts 'Creating Airports'
airport1 = Airport.create!(
name: "Barcelona El Prat",
address: "El Prat de Llobregat"
  )
puts 'Airports Finished!'



puts 'Creating experiences'
experience1 = Experience.create!(
    title:        "Tapas Walking Tour",
    description:  "A guided tour that takes you around Barcelona ́s historical center covering the Gothic area and El Born. The tour includes various stops at selected restaurants to enjoy different traditional tapas whilst walking through some of the most picturesque areas of the city.",
    capacity:     8,
    price:        130,
    category:     "Gastronomic",
    duration:     5,
    start_time:   Time.new("2019-08-20 11:00:00 +0100"),
    end_time:     Time.new("2019-08-20 21:00:00 +0100"),
    # remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477378/leap/tapas_walking_tour_icrgxn.jpg",
    airport: airport1)

experience_photo1 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477378/leap/tapas_walking_tour_icrgxn.jpg"
  )

experience1 = Experience.create!(
    title:        "Dinner at the Beach",
    description:  "An experience where visitors will be taken to a nearby restaurant which is close to the vicinity of the airport and directly on the beach. Dinner is made up of a 5 course seafoodmenu. After dinner, visitors will have the opportunity to relax and enjoy as much free time on the beach as their transit allows for.",
    capacity:     6,
    price:        80,
    category:     "Gastronomic",
    duration:     3,
    start_time:   Time.new("2019-08-20 17:00:00 +0100"),
    end_time:     Time.new("2019-08-20 23:00:00 +0100"),
    # remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477273/leap/beach_dinner_ylocub.jpg",
    airport_id: airport1.id )

experience_photo2 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477273/leap/beach_dinner_ylocub.jpg"
  )

experience1 = Experience.create!(
    title:         "Traditional Paella Lunch",
    description:   "Enjoy a traditional Spanish lunch at a selected classic Catalan style ‘macia’ or country house. This is a slow food experience and includes a short tour of the farm and an introduction to paella cooking by the head chef.",
    capacity:     9,
    price:        90,
    category:     "Gastronomic",
    duration:     3,
    start_time:   Time.new("2019-08-20 12:00:00 +0100"),
    end_time:     Time.new("2019-08-20 17:00:00 +0100"),
    # remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477329/leap/paella_j86eqn.jpg",
    airport_id: airport1.id )

experience_photo3 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477329/leap/paella_j86eqn.jpg"
  )

experience1 = Experience.create!(
    title:        "Rooftop Wine & Dine",
    description:  "This tour takes you to one of Barcelona ́s many amazing rooftops, with views of the entire city. The experience includes a traditional Catalan dinner for two, based on seasonal ingredients, with the possibility to take a dip in the hotel rooftop pool.",
    capacity:     6,
    price:        130,
    category:     "Gastronomic",
    duration:     3,
    start_time:   Time.new("2019-08-20 18:00:00 +0100"),
    end_time:     Time.new("2019-08-20 01:00:00 +0100"),
    # remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477345/leap/rooftop_wine_r4czra.jpg",
    airport_id: airport1.id )

experience_photo4 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477345/leap/rooftop_wine_r4czra.jpg"
  )

experience1 = Experience.create!(
    title:        "Montserrat Monastery Tour",
    description:  "This tour designed for those with a little more transit time. It takes you on a guided tour of the picturesque mountain range of Montserrat, approximately 45min drive from the airport. It includes a visit to the historical mountain top monastery. Take a guided tour through the Basilica and Monastery on Montserrat, a beautiful, multi-peak mountain with dramatic rock formations, with free time to continue exploring the museum, farmer's market, or views from the ridge of Cavall Bernat.",
    capacity:     10,
    price:        230,
    category:     "Cultural",
    duration:     8,
    start_time:   Time.new("2019-08-20 09:00:00 +0100"),
    end_time:     Time.new("2019-08-20 21:00:00 +0100"),
    # remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477316/leap/monastery_kgt9fv.jpg",
    airport_id: airport1.id )

experience_photo5 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477316/leap/monastery_kgt9fv.jpg"
  )

experience1 = Experience.create!(
    title:        "Flamenco show & Dinner",
    description:  "This experience combines two activities. The first takes you to a historic building in the gothic quarter where you will enjoy a traditional flamenco show. Take in the lively atmosphere of one of Spain’s most famous flamenco venues. After the show, visitors are taken to a selected restaurant in Barcelona’s city center where you can enjoy a tapas tasting menu. to relax and enjoy as much free time on the beach as their transit allows for.",
    capacity:     4,
    price:        150,
    category:     "Cultural, Gastronomic",
    duration:     5,
    start_time:   Time.new("2019-08-20 17:00:00 +0100"),
    end_time:     Time.new("2019-08-20 22:00:00 +0100"),
    # remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477302/leap/flamenco_awdufl.jpg",
    airport_id: airport1.id )

experience_photo6 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477302/leap/flamenco_awdufl.jpg"
  )

experience1 = Experience.create!(
    title:        "Brunch in the city",
    description:  "Transiting early? Take a ride straight to one of our selected restaurants and enjoy a brunch buffet in one of our many partnered restaurants, you can also enjoy a walk in thecity center if you still have enough transit time!",
    capacity:     4,
    price:        95,
    category:     "Gastronomic",
    duration:     4,
    start_time:   Time.new("2019-08-20 09:00:00 +0100"),
    end_time:     Time.new("2019-08-20 14:00:00 +0100"),
    # remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477290/leap/brunch_qsyyzr.jpg",
    airport_id: airport1.id )

experience_photo7 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477290/leap/brunch_qsyyzr.jpg"
  )

experience1 = Experience.create!(
    title:        "Fast-track Sagrada Familia Tourr",
    description:  "Sail past the long lines of tourists to gain entry to Gaudi’s La Sagrada Familia with priority access and pre-booked tickets of the modernist masterpiece. Accompanied a guide you will head straight inside into the history of the UNESCO World Heritage-listed cathedral.",
    capacity:     6,
    price:        140,
    category:     "Cultural",
    duration:     4,
    start_time:   Time.new("2019-08-20 10:00:00 +0100"),
    end_time:     Time.new("2019-08-20 18:00:00 +0100"),
    # remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477364/leap/sagrada_familia_xpldrt.jpg",
    airport_id: airport1.id )

experience_photo8 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477364/leap/sagrada_familia_xpldrt.jpg"
  )

experience1 = Experience.create!(
    title:        "Local Wine & Cava with Tapas at a Vineyard",
    description:  "Visit a winery which has been cultivating vines for more that 2,000 years, where you’ll travel through its vineyards in a 4x4 Jeep. Hear from a viticulturist who can explain the art of wine production. You’ll have the opportunity to taste four wines, four glasses of cava and indulge in a variety of tapas.",
    capacity:     7,
    price:        140,
    category:     "Gastronomic",
    duration:     4,
    start_time:   Time.new("2019-08-20 10:00:00 +0100"),
    end_time:     Time.new("2019-08-20 18:00:00 +0100"),
    # remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477392/leap/vineyard_gpxvvz.png",
    airport_id: airport1.id )

experience_photo9 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477392/leap/vineyard_gpxvvz.png"
  )

puts 'Finished!'
