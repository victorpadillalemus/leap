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
  email: "victor.padilla.lemus@gmail.com",
  password: "password",
  first_name: "victor",
  last_name: "padilla",
  admin: true
)

puts 'Users Finished!'

puts 'Cleaning database...'
ExperiencePhoto.destroy_all
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
    price:        130,
    category:     "Gastronomy",
    duration:     5,
    start_time:   11,
    end_time:     21,
    #remote_photo_url: "https://secure.img1-fg.wfcdn.com/im/07541924/compr-r85/7122/71229515/watoga-fir-4-person-traditional-steam-sauna.jpg",
    airport_id: airport1.id )

experience_photo1 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477378/leap/tapas_walking_tour_icrgxn.jpg"
  )
experience_photo1 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477378/leap/tapas_walking_tour_icrgxn.jpg"
  )
experience_photo1 = ExperiencePhoto.create!(
  experience: experience1,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477378/leap/tapas_walking_tour_icrgxn.jpg"
  )

experience2 = Experience.create!(
    title:        "Dinner at the Beach",
    description:  "An experience where visitors will be taken to a nearby restaurant which is close to the vicinity of the airport and directly on the beach. Dinner is made up of a 5 course seafoodmenu. After dinner, visitors will have the opportunity to relax and enjoy as much free time on the beach as their transit allows for.",
    capacity:     6,
    price:        80,
    category:     "Gastronomy",
    duration:     3,
    start_time:   18,
    end_time:     23,
    airport_id: airport1.id )

experience_photo2 = ExperiencePhoto.create!(
  experience: experience2,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477273/leap/beach_dinner_ylocub.jpg"
  )

experience3 = Experience.create!(
    title:         "Traditional Paella Lunch",
    description:   "Enjoy a traditional Spanish lunch at a selected classic Catalan style ‘macia’ or country house. This is a slow food experience and includes a short tour of the farm and an introduction to paella cooking by the head chef.",
    capacity:     9,
    price:        90,
    category:     "Gastronomy",
    duration:     3,
    start_time:   11,
    end_time:     16,
    airport_id: airport1.id )

experience_photo3 = ExperiencePhoto.create!(
  experience: experience3,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477329/leap/paella_j86eqn.jpg"
  )

experience4 = Experience.create!(
    title:        "Rooftop Wine & Dine",
    description:  "This tour takes you to one of Barcelona ́s many amazing rooftops, with views of the entire city. The experience includes a traditional Catalan dinner for two, based on seasonal ingredients, with the possibility to take a dip in the hotel rooftop pool.",
    capacity:     6,
    price:        130,
    category:     "Gastronomy",
    duration:     3,
    start_time:   19,
    end_time:     24,
    airport_id: airport1.id )

experience_photo4 = ExperiencePhoto.create!(
  experience: experience4,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477345/leap/rooftop_wine_r4czra.jpg"
  )

experience5 = Experience.create!(
    title:        "Montserrat Monastery Tour",
    description:  "This tour designed for those with a little more transit time. It takes you on a guided tour of the picturesque mountain range of Montserrat, approximately 45min drive from the airport. It includes a visit to the historical mountain top monastery. Take a guided tour through the Basilica and Monastery on Montserrat, a beautiful, multi-peak mountain with dramatic rock formations, with free time to continue exploring the museum, farmer's market, or views from the ridge of Cavall Bernat.",
    capacity:     10,
    price:        230,
    category:     "Cultural",
    duration:     8,
    start_time:   9,
    end_time:     17,
    airport_id: airport1.id )

experience_photo5 = ExperiencePhoto.create!(
  experience: experience5,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477316/leap/monastery_kgt9fv.jpg"
  )

experience6 = Experience.create!(
    title:        "Flamenco show & Dinner",
    description:  "This experience combines two activities. The first takes you to a historic building in the gothic quarter where you will enjoy a traditional flamenco show. Take in the lively atmosphere of one of Spain’s most famous flamenco venues. After the show, visitors are taken to a selected restaurant in Barcelona’s city center where you can enjoy a tapas tasting menu. to relax and enjoy as much free time on the beach as their transit allows for.",
    capacity:     4,
    price:        150,
    category:     "Cultural, Gastronomy",
    duration:     5,
    start_time:   19,
    end_time:     24,
    airport_id: airport1.id )

experience_photo6 = ExperiencePhoto.create!(
  experience: experience6,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477302/leap/flamenco_awdufl.jpg"
  )

experience7 = Experience.create!(
    title:        "Brunch in the city",
    description:  "Transiting early? Take a ride straight to one of our selected restaurants and enjoy a brunch buffet in one of our many partnered restaurants, you can also enjoy a walk in thecity center if you still have enough transit time!",
    capacity:     4,
    price:        95,
    category:     "Gastronomy",
    duration:     4,
    start_time:   8,
    end_time:     16,
    airport_id: airport1.id )

experience_photo7 = ExperiencePhoto.create!(
  experience: experience7,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477290/leap/brunch_qsyyzr.jpg"
  )

experience8 = Experience.create!(
    title:        "Fast-track Sagrada Familia Tourr",
    description:  "Sail past the long lines of tourists to gain entry to Gaudi’s La Sagrada Familia with priority access and pre-booked tickets of the modernist masterpiece. Accompanied a guide you will head straight inside into the history of the UNESCO World Heritage-listed cathedral.",
    capacity:     6,
    price:        140,
    category:     "Cultural",
    duration:     4,
    start_time:   9,
    end_time:     17,
    airport_id: airport1.id )

experience_photo8 = ExperiencePhoto.create!(
  experience: experience8,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477364/leap/sagrada_familia_xpldrt.jpg"
  )

experience9 = Experience.create!(
    title:        "Local Wine & Cava with Tapas at a Vineyard",
    description:  "Visit a winery which has been cultivating vines for more that 2,000 years, where you’ll travel through its vineyards in a 4x4 Jeep. Hear from a viticulturist who can explain the art of wine production. You’ll have the opportunity to taste four wines, four glasses of cava and indulge in a variety of tapas.",
    capacity:     7,
    price:        140,
    category:     "Gastronomy",
    duration:     4,
    start_time:   9,
    end_time:     17,
    airport_id: airport1.id )

experience_photo9 = ExperiencePhoto.create!(
  experience: experience9,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566477392/leap/vineyard_gpxvvz.png"
  )

experience10 = Experience.create!(
    title:        "Romantic Jazz and Chill Out Cruise",
    description:  "The Jazz and Chill Out Sail in Barcelona is a great way to just sit back and enjoy the ride, while listening to live music and taking advantage of the beautiful views that Barcelona’s city skyline has to offer. Experience the luxury and comfort of sailing on board the Catamaran Orsom and enjoy a nice cold drink while you listen to the sounds of the sea and live Jazz and Chill out music.",
    capacity:     8,
    price:        20,
    category:     "Romantic",
    duration:     3,
    start_time:   19,
    end_time:     23,
    airport_id: airport1.id )

experience_photo10 = ExperiencePhoto.create!(
  experience: experience10,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566816219/sailing_q17eqz.jpg"
  )

experience11 = Experience.create!(
    title:        "Flamenco Night at Tablao Cordobes",
    description:  "Feel the passion of the flamenco at Barcelona's legendary Tablao Cordobes, where some of the greatest names in flamenco have performed. Entertained by an internationally renowned flamenco group, you'll discover why the traditional dance of Spain is so popular. You'll also have the option of dining on a traditional buffet meal or simply ordering a drink to enjoy while watching the show.",
    capacity:     6,
    price:        50,
    category:     "Romantic",
    duration:     2,
    start_time:   19,
    end_time:     23,
    airport_id: airport1.id )

experience_photo11 = ExperiencePhoto.create!(
  experience: experience11,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566816204/flamenco_kvoan1.jpg"
  )

experience12 = Experience.create!(
    title:        "Camp Nou - F.C.Barcelona Open Date Ticket",
    description:  "Discover the authentic essence of Futbol Club Barcelona. You can visit the museum of FC Barcelona, a modern museum, with interactive murals, audiovisuals, new showcases and a collection that will let you know the history of FC Barcelona and understand at the same time the values that make Barça 'More than a club'. You can also visit the press room, the changing rooms and the access tunnel until you reach the playing field; from here, you can enjoy the panoramic view of the entire stadium.",
    capacity:     12,
    price:        40,
    category:     "Family",
    duration:     3,
    start_time:   10,
    end_time:     18,
    airport_id: airport1.id )

experience_photo12 = ExperiencePhoto.create!(
  experience: experience12,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566816729/camp_nou_hghaa1.jpg"
  )

experience13 = Experience.create!(
    title:        "Girona and Costa Brava Small-Group Tour",
    description:  "Travel through history in Girona and immerse in the pristine scenery of Costa Brava. Experience a unique landscape along the way and head into the historic town of Girona. Enjoy a walking tour of the Old Town, have a look to the widest Gothic Cathedral in the world and be surprised by the colourful spectacle of the houses along the Onyar River. After the Girona tour, drive to Costa Brava and breath it's unique surroundings and nature.",
    capacity:     8,
    price:        95,
    category:     "Family",
    duration:     6,
    start_time:   10,
    end_time:     18,
    airport_id: airport1.id )

experience_photo13 = ExperiencePhoto.create!(
  experience: experience13,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566816145/Girona_lv3glf.jpg"
  )

experience14 = Experience.create!(
    title:        "Bar Crawl Barcelona",
    description:  "Pub crawl Barcelona has been running the best pub crawls in Barcelona since 2007 except nothing less than the best party the city of Barcelona has to offer and sign up for one of our pub crawl´s today!",
    capacity:     10,
    price:        15,
    category:     "Nightlife",
    duration:     4,
    start_time:   18,
    end_time:     9,
    airport_id: airport1.id )

experience_photo14 = ExperiencePhoto.create!(
  experience: experience14,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566816314/pub_crawl_v4hcug.jpg"
  )

experience15 = Experience.create!(
    title:        "A Night Out in Barcelona",
    description:  "This is our most local bar in the heart of Barcelona’s most diverse neighbourhoods! This is a night where the dress code is minimal and where coming out of your box is celebrated! Get ready for an exciting night in an area full of interesting characters and stories! La Rouge Bar is a home to the artists of Barcelona and is known for its music, shows and cocktail geniuses. They serve cheap beers and wines, homemade cava and flavorful cocktails.",
    capacity:     10,
    price:        20,
    category:     "Nightlife",
    duration:     3,
    start_time:   18,
    end_time:     9,
    airport_id: airport1.id )

experience_photo15 = ExperiencePhoto.create!(
  experience: experience15,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566824543/bar_ysig3k.jpg"
  )

experience16 = Experience.create!(
    title:        "Stadium Santiago Bernabeu",
    description:  "Visit the mythical Santiago Bernabeu Stadium with a passionate football guide who will bring you the best of Real Madrid. Real Madrid Stadium is an unique place rich in memories, enter one of the most legendary football club in the world!",
    capacity:     8,
    price:        45,
    category:     "Cultural",
    duration:     4,
    start_time:   9,
    end_time:     20,
    airport_id: airport2.id )

experience_photo16 = ExperiencePhoto.create!(
  experience: experience16,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566813018/Santiago_Bernabeu_e3yjjz.jpg"
  )

experience17 = Experience.create!(
    title:        "Prado National museum",
    description:  "Admire some of Europe’s greatest artworks at leisure with admission to the Prado Museum in Madrid. Spain’s leading art museum, the Prado houses an acclaimed European art collection dating from the1300s to the 1900s. Walk through the halls to view masterpieces by Titian, Bosch, Rubens, Velázquez, Goya, and others, including Velázquez’s ‘Les Meninas’ and Bosch’s ‘The Garden of Earthly Delights.’ Choose a regular or mobile ticket for the day of your choosing.",
    capacity:     6,
    price:        50,
    category:     "Cultural",
    duration:     6,
    start_time:   10,
    end_time:     19,
    airport_id: airport2.id )

experience_photo17 = ExperiencePhoto.create!(
  experience: experience17,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566813078/Museo_del_Prado_pw0zmi.jpg"
  )

experience18 = Experience.create!(
    title:        "Magical - Retiro Park Segway Tour",
    description:  "Any visit to Madrid happens to go to the Retiro Park, They are 118 Hectares of Serenity and Majestic Beauty in the city. At any time of the year it is worth visiting. Feel the Silence of its gardens, Drive on segway to its impetuous monuments, The Crystal Palace, The Main lake and The Mysterious Fallen Angel ...  Discover its secrets and admire this beautiful park in its entirety.",
    capacity:     8,
    price:        40,
    category:     "Cultural",
    duration:     4,
    start_time:   10,
    end_time:     18,
    airport_id: airport2.id )

experience_photo18 = ExperiencePhoto.create!(
  experience: experience18,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566814920/Segway_retiro_park_qptppo.jpg"
  )

experience20 = Experience.create!(
    title:        "Flamenco Show in Madrid city center",
    description:  "Open as a Tablao Flamenco in 1961, La Taberna de Mister Pinkleton, located in the very center of Madrid, offers currently an amazing and different flamenco show while enjoying the best products of the Spanish gastronomy and a huge selection of wine, champagne and spirits labels.The atmosphere of this place is intimate and traditional, full of the Spanish essence and carefully maintained as it has been since the 60´s.",
    capacity:     4,
    price:        120,
    category:     "Cultural",
    duration:     4,
    start_time:   16,
    end_time:     22,
    airport_id: airport2.id )

experience_photo20 = ExperiencePhoto.create!(
  experience: experience20,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566813026/flamenco_show_xlnbo9.jpg"
  )

experience21 = Experience.create!(
    title:        "Spanish Cooking Master Class",
    description:  "Learn to cook authentic Spanish dishes under the watchful eye of a local instructor in Madrid! After exploring the tempting food stalls of Torrijos Market (Mercardo de Torrijos), head inside its cooking school to learn the secrets of Spain’s much-loved gastronomy. Make flagship dishes like paella and a Spanish omelette, and taste some typical Spanish red and white wines.",
    capacity:     6,
    price:        100,
    category:     "Cultural",
    duration:     4,
    start_time:   15,
    end_time:     22,
    airport_id: airport2.id )

experience_photo21 = ExperiencePhoto.create!(
  experience: experience21,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566815022/Spanish_Cooking3_ww1lht.jpg"
  )

experience22 = Experience.create!(
    title:        "Party Bus in Barcelona",
    description:  "Experience the energy of Barcelona at night on Party-Bus with party-loving guides and an up-for-fun crowd. Explore the city's nightlife alongside a cool group of backpackers, travelers or people just looking for a good time, and go to some of Madrid best bars and clubs.",
    capacity:     5,
    price:        60,
    category:     "nightlife",
    duration:     4,
    start_time:   20,
    end_time:     24,
    airport_id: airport1.id )

experience_photo22 = ExperiencePhoto.create!(
  experience: experience22,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566815528/Partybus_madrid_ryal1u.jpg"
  )

experience23 = Experience.create!(
    title:        "Mercado San Miguel tour",
    description:  "High quality culinary adventures abound in this wholesale food market, now one of the most important in Europe. Besides eating on-site, you can buy wrapped and canned food, as well as bottles of wine.",
    capacity:     4,
    price:        110,
    category:     "gastronomy",
    duration:     4,
    start_time:   10,
    end_time:     20,
    airport_id: airport2.id )

experience_photo23 = ExperiencePhoto.create!(
  experience: experience23,
  remote_photo_url: "https://res.cloudinary.com/drrqe1a7m/image/upload/v1566813059/mercado-san-miguel_whtgz3.jpg"
  )

puts 'Finished!'
