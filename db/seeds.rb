puts "SEEDING NOW !"
puts "====================="

#ADMIN
@admin = FactoryBot.create(
  :admin
)

puts "ADMINS seeds done !"
puts "====================="

#USER
@booker1 = FactoryBot.create(
  :booker,
  email:                 "booker1@msb.com",
  password:              "password",
  password_confirmation: "password",
  firstname:             "Booker",
  lastname:              "MSB",
  mobile:                "0102030405",
  phone:                 "0607080910",
  sex:                   "Male"
)

puts "BOOKERS seeds done !"
puts "====================="

#OWNER
@owner1 = FactoryBot.create(
  :owner,
  email:                 "owner1@msb.com",
  password:              "password",
  password_confirmation: "password",
  firstname:             "Owner",
  lastname:              "MSB",
  mobile:                "0102030405",
  phone:                 "0607080910",
  sex:                   "Male"
)

puts "OWNERS seeds done !"
puts "====================="

@booker_address = FactoryBot.create(
  :address,
  street:  "11 place de la concorde",
  country: "France",
  zipcode: "75001",
  city:    "Paris",
  usage:    "Living",
  booker_id: @booker1.id,
)

puts "BOOKER ADDRESSES seeds done !"
puts "====================="

@owner_address = FactoryBot.create(
  :address,
  street:  "11 place de la concorde",
  country: "France",
  zipcode: "75001",
  city:    "Paris",
  usage:    "Living",
  owner_id: @owner1.id
)

puts "OWNER ADDRESSES seeds done !"
puts "====================="

@owner_building = FactoryBot.create(
  :building,
  name:     "Hotel Concorde",
  lat:      45.75,
  long:     4.85,
  street:   "11 rue de la paix",
  zipcode:  "69000",
  city:     "Lyon",
  country:  "France",
  owner_id: @owner1.id,
  image:    Rails.root.join('app/assets/images/seed_images/lyon.jpg').open
)

@owner_building2 = FactoryBot.create(
  :building,
  name:     "Zenith de Paris",
  lat:      48.866667,
  long:     2.333333,
  street:   "11 cours dauphiné",
  zipcode:  "75000",
  city:     "Paris",
  country:  "France",
  owner_id: @owner1.id,
  image:    Rails.root.join('app/assets/images/seed_images/paris.jpg').open
)

@owner_building3 = FactoryBot.create(
  :building,
  name:     "Stade de Marseille",
  lat:      43.3,
  long:     5.4,
  street:   "11 rue de la paix",
  zipcode:  "13000",
  city:     "Marseille",
  country:  "France",
  owner_id: @owner1.id,
  image:    Rails.root.join('app/assets/images/seed_images/marseille.jpg').open
)

puts "OWNER BUILDINGs seeds done !"
puts "====================="

@building_image10 = FactoryBot.create(
  :building_image,
  building_id: @owner_building.id,
  image:       Rails.root.join('app/assets/images/seed_images/lyon_1.jpg').open
)
@building_image11 = FactoryBot.create(
  :building_image,
  building_id: @owner_building.id,
  image:       Rails.root.join('app/assets/images/seed_images/lyon_2.jpg').open
)
@building_image12 = FactoryBot.create(
  :building_image,
  building_id: @owner_building.id,
  image:       Rails.root.join('app/assets/images/seed_images/lyon_3.jpg').open
)

@building_image20 = FactoryBot.create(
  :building_image,
  building_id: @owner_building2.id,
  image:       Rails.root.join('app/assets/images/seed_images/paris_1.jpg').open
)
@building_image21 = FactoryBot.create(
  :building_image,
  building_id: @owner_building2.id,
  image:       Rails.root.join('app/assets/images/seed_images/paris_2.jpg').open
)
@building_image22 = FactoryBot.create(
  :building_image,
  building_id: @owner_building2.id,
  image:       Rails.root.join('app/assets/images/seed_images/paris_3.jpg').open
)

@building_image30 = FactoryBot.create(
  :building_image,
  building_id: @owner_building3.id,
  image:       Rails.root.join('app/assets/images/seed_images/marseille_1.jpg').open
)
@building_image31 = FactoryBot.create(
  :building_image,
  building_id: @owner_building3.id,
  image:       Rails.root.join('app/assets/images/seed_images/marseille_2.jpg').open
)
@building_image32 = FactoryBot.create(
  :building_image,
  building_id: @owner_building3.id,
  image:       Rails.root.join('app/assets/images/seed_images/marseille_3.jpg').open
)
puts "OWNER BUILDINGs IMAGEs seeds done !"
puts "====================="

@building_place10 = FactoryBot.create(
  :place,
  name:        "Salle de réception",
  description: "Magnifique salle de réception situé dans la partie basse de l'hotel",
  total_price: 1750,
  unit_price:  50,
  capacity:    40,
  building_id: @owner_building.id,
  image:       Rails.root.join('app/assets/images/seed_images/lyon.jpg').open
)

@building_place20 = FactoryBot.create(
  :place,
  name:        "Salle de concert est",
  description: "Magnifique salle de concert avec estrade entièrement équipé, idéal pour conférence",
  total_price: 45000,
  unit_price:  20,
  capacity:    3000,
  building_id: @owner_building2.id,
  image:       Rails.root.join('app/assets/images/seed_images/paris.jpg').open
)

@building_place21 = FactoryBot.create(
  :place,
  name:        "Salle de spectable ouest",
  description: "Magnifique salle de spectacle, idéal pour grande réunion et repas d'affaires",
  total_price: 4800,
  unit_price:  35,
  capacity:    150,
  building_id: @owner_building2.id,
  image:       Rails.root.join('app/assets/images/seed_images/paris.jpg').open
)

@building_place30 = FactoryBot.create(
  :place,
  name:        "Loge Est",
  description: "Superbe loge avec veranda surplombant le stade, idéale pour petit meeting d'affaires.",
  total_price: 1200,
  unit_price:  150,
  capacity:    10,
  building_id: @owner_building3.id,
  image:       Rails.root.join('app/assets/images/seed_images/marseille.jpg').open
)

@building_place31 = FactoryBot.create(
  :place,
  name:        "Salle de réunion",
  description: "Notre Salle de réunion saura vous accueillir vous et vos convive afin de répondre a vos exigences professionelles",
  total_price: 20000,
  unit_price:  100,
  capacity:    250,
  building_id: @owner_building3.id,
  image:       Rails.root.join('app/assets/images/seed_images/marseille.jpg').open
)

@building_place32 = FactoryBot.create(
  :place,
  name:        "Refectoire Ouest",
  description: "Ce refectoire entierement refait a neuf et tout équipé, moderne et d'un style industrielle vous permettra a coup sure de finalisé vos contrats",
  total_price: 12000,
  unit_price:  50,
  capacity:    250,
  building_id: @owner_building3.id,
  image:       Rails.root.join('app/assets/images/seed_images/marseille.jpg').open
)

puts "BUILDING PLACES seeds done !"
puts "====================="

[@building_place30, @building_place31, @building_place32].each do |place|
  place.place_images << FactoryBot.create(
    :place_image,
    place_id: place.id,
    image:    Rails.root.join('app/assets/images/seed_images/marseille_1.jpg').open
  )
  place.place_images << FactoryBot.create(
    :place_image,
    place_id: place.id,
    image:    Rails.root.join('app/assets/images/seed_images/marseille_2.jpg').open
  )
  place.place_images << FactoryBot.create(
    :place_image,
    place_id: place.id,
    image:    Rails.root.join('app/assets/images/seed_images/marseille_3.jpg').open
  )
end

[@building_place20, @building_place21].each do |place|
  place.place_images << FactoryBot.create(
    :place_image,
    place_id: place.id,
    image:    Rails.root.join('app/assets/images/seed_images/paris_1.jpg').open
  )
  place.place_images << FactoryBot.create(
    :place_image,
    place_id: place.id,
    image:    Rails.root.join('app/assets/images/seed_images/paris_2.jpg').open
  )
  place.place_images << FactoryBot.create(
    :place_image,
    place_id: place.id,
    image:    Rails.root.join('app/assets/images/seed_images/paris_3.jpg').open
  )
end

@building_place10.place_images << FactoryBot.create(
  :place_image,
  place_id: @building_place10.id,
  image:    Rails.root.join('app/assets/images/seed_images/lyon_1.jpg').open
)
@building_place10.place_images << FactoryBot.create(
  :place_image,
  place_id: @building_place10.id,
  image:    Rails.root.join('app/assets/images/seed_images/lyon_2.jpg').open
)
@building_place10.place_images << FactoryBot.create(
  :place_image,
  place_id: @building_place10.id,
  image:    Rails.root.join('app/assets/images/seed_images/lyon_3.jpg').open
)
puts "BUILDING PLACES IMAGES seeds done !"
puts "====================="

@place_note = FactoryBot.create(
  :note,
  place_id: @building_place10.id,
  booker_id: @booker1.id
)

@place_note = FactoryBot.create(
  :note,
  place_id: @building_place10.id,
  booker_id: @booker1.id
)

@place_note = FactoryBot.create(
  :note,
  place_id: @building_place10.id,
  booker_id: @booker1.id
)

@place_note = FactoryBot.create(
  :note,
  place_id: @building_place20.id,
  booker_id: @booker1.id
)

@place_note = FactoryBot.create(
  :note,
  place_id: @building_place30.id,
  booker_id: @booker1.id
)

puts "PLACE NOTES seeds done !"
puts "====================="

@option = FactoryBot.create(
  :option,
  name: "Disposition en U"
)

@option2 = FactoryBot.create(
  :option,
  name: "Disposition en O"
)

@option3 = FactoryBot.create(
  :option,
  name: "Vidéoprojecteur"
)

@option4 = FactoryBot.create(
  :option,
  name: "Piscine"
)

puts "OPTIONS seeds done !"
puts "====================="
