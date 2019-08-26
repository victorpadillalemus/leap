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
airport2 = Airport.create!(
name: "Madrid-Barajas Adolfo Suárez Airport",
address: "Av de la Hispanidad, 28042 Madrid"
  )
puts 'Airports Finished!'



puts 'Creating experiences'
experience1 = Experience.create!(
    title:        "Tapas Walking Tour",
    description:  "A guided tour that takes you around Barcelona ́s historical center covering the Gothic area and El Born. The tour includes various stops at selected restaurants to enjoy different traditional tapas whilst walking through some of the most picturesque areas of the city.",
    capacity:     8,
    price:        130.25,
    category:     "Gastronomy",
    duration:     5,
    start_time:   rand(0..12),
    end_time:     rand(12..24),
    #remote_photo_url: "https://secure.img1-fg.wfcdn.com/im/07541924/compr-r85/7122/71229515/watoga-fir-4-person-traditional-steam-sauna.jpg",
    airport_id: airport1.id )

experience_photo1 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477378/leap/tapas_walking_tour_icrgxn.jpg"
  )

experience1 = Experience.create!(
    title:        "Dinner at the Beach",
    description:  "An experience where visitors will be taken to a nearby restaurant which is close to the vicinity of the airport and directly on the beach. Dinner is made up of a 5 course seafoodmenu. After dinner, visitors will have the opportunity to relax and enjoy as much free time on the beach as their transit allows for.",
    capacity:     6,
    price:        80,
    category:     "Gastronomy",
    duration:     3,
    start_time:   rand(0..12),
    end_time:     rand(12..24),
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
    category:     "Gastronomy",
    duration:     3,
    start_time:   rand(0..12),
    end_time:     rand(12..24),
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
    category:     "Gastronomy",
    duration:     3,
    start_time:   rand(0..12),
    end_time:     rand(12..24),
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
    start_time:   rand(0..12),
    end_time:     rand(12..24),
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
    category:     "Cultural, Gastronomy",
    duration:     5,
    start_time:   rand(0..12),
    end_time:     rand(12..24),
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
    category:     "Gastronomy",
    duration:     4,
    start_time:   rand(0..12),
    end_time:     rand(12..24),
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
    start_time:   rand(0..12),
    end_time:     rand(12..24),
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
    category:     "Gastronomy",
    duration:     4,
    start_time:   rand(0..12),
    end_time:     rand(12..24),
    airport_id: airport1.id )

experience_photo9 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477392/leap/vineyard_gpxvvz.png"
  )

experience10 = Experience.create!(
    title:        "Stadium Santiago Bernabeu",
    description:  "Visit the mythical Santiago Bernabeu Stadium with a passionate football guide who will bring you the best of Real Madrid. Real Madrid Stadium is an unique place rich in memories, enter one of the most legendary football club in the world!",
    capacity:     8,
    price:        45,
    category:     "Cultural",
    duration:     4,
    start_time:   9,
    end_time:     20,
    airport_id: airport2.id )

experience_photo10 = ExperiencePhoto.create!(
  experience: experience10,
  remote_photo_url: "Pending"
  )

experience11 = Experience.create!(
    title:        "Prado National museum",
    description:  "Admire some of Europe’s greatest artworks at leisure with admission to the Prado Museum in Madrid. Spain’s leading art museum, the Prado houses an acclaimed European art collection dating from the1300s to the 1900s. Walk through the halls to view masterpieces by Titian, Bosch, Rubens, Velázquez, Goya, and others, including Velázquez’s ‘Les Meninas’ and Bosch’s ‘The Garden of Earthly Delights.’ Choose a regular or mobile ticket for the day of your choosing.",
    capacity:     6,
    price:        50,
    category:     "Cultural",
    duration:     6,
    start_time:   10,
    end_time:     19,
    airport_id: airport2.id )

experience_photo11 = ExperiencePhoto.create!(
  experience: experience11,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566813078/Museo_del_Prado_pw0zmi.jpg"
  )

experience12 = Experience.create!(
    title:        "Magical - Retiro Park Segway Tour",
    description:  "Any visit to Madrid happens to go to the Retiro Park, They are 118 Hectares of Serenity and Majestic Beauty in the city. At any time of the year it is worth visiting. Feel the Silence of its gardens, Drive on segway to its impetuous monuments, The Crystal Palace, The Main lake and The Mysterious Fallen Angel ...  Discover its secrets and admire this beautiful park in its entirety.",
    capacity:     8,
    price:        40,
    category:     "Cultural",
    duration:     4,
    start_time:   10,
    end_time:     18,
    airport_id: airport2.id )

experience_photo12 = ExperiencePhoto.create!(
  experience: experience12,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566814920/Segway_retiro_park_qptppo.jpg"
  )

experience13 = Experience.create!(
    title:        "Flamenco Show in Madrid city center",
    description:  "Open as a Tablao Flamenco in 1961, La Taberna de Mister Pinkleton, located in the very center of Madrid, offers currently an amazing and different flamenco show while enjoying the best products of the Spanish gastronomy and a huge selection of wine, champagne and spirits labels.The atmosphere of this place is intimate and traditional, full of the Spanish essence and carefully maintained as it has been since the 60´s.",
    capacity:     4,
    price:        120,
    category:     "Cultural",
    duration:     4,
    start_time:   16,
    end_time:     22,
    airport_id: airport2.id )

experience_photo13 = ExperiencePhoto.create!(
  experience: experience13,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566813026/flamenco_show_xlnbo9.jpg"
  )

experience14 = Experience.create!(
    title:        "Spanish Cooking Master Class",
    description:  "Learn to cook authentic Spanish dishes under the watchful eye of a local instructor in Madrid! After exploring the tempting food stalls of Torrijos Market (Mercardo de Torrijos), head inside its cooking school to learn the secrets of Spain’s much-loved gastronomy. Make flagship dishes like paella and a Spanish omelette, and taste some typical Spanish red and white wines.",
    capacity:     6,
    price:        100,
    category:     "Cultural",
    duration:     4,
    start_time:   15,
    end_time:     22,
    airport_id: airport2.id )

experience_photo14 = ExperiencePhoto.create!(
  experience: experience14,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566815022/Spanish_Cooking3_ww1lht.jpg"
  )

experience15 = Experience.create!(
    title:        "Party Bus in Barcelona",
    description:  "Experience the energy of Barcelona at night on Party-Bus with party-loving guides and an up-for-fun crowd. Explore the city's nightlife alongside a cool group of backpackers, travelers or people just looking for a good time, and go to some of Madrid best bars and clubs.",
    capacity:     5,
    price:        60,
    category:     "nightlife",
    duration:     4,
    start_time:   20,
    end_time:     24,
    airport_id: airport1.id )

experience_photo15 = ExperiencePhoto.create!(
  experience: experience15,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566815528/Partybus_madrid_ryal1u.jpg"
  )

experience16 = Experience.create!(
    title:        "Mercado San Miguel tour",
    description:  "High quality culinary adventures abound in this wholesale food market, now one of the most important in Europe. Besides eating on-site, you can buy wrapped and canned food, as well as bottles of wine.",
    capacity:     4,
    price:        110,
    category:     "gastronomy",
    duration:     4,
    start_time:   10,
    end_time:     20,
    airport_id: airport2.id )

experience_photo16 = ExperiencePhoto.create!(
  experience: experience16,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566813059/mercado-san-miguel_whtgz3.jpg"
  )

puts 'Finished!'
