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
  lat:      0.25,
  long:     0.25,
  street:   "11 rue de la paix",
  zipcode:  "69000",
  city:     "Lyon",
  country:  "France",
  owner_id: @owner1.id
)

@owner_building2 = FactoryBot.create(
  :building,
  name:     "Zenith de Paris",
  lat:      0.25,
  long:     0.25,
  street:   "11 cours dauphiné",
  zipcode:  "75000",
  city:     "Paris",
  country:  "France",
  owner_id: @owner1.id
)

@owner_building3 = FactoryBot.create(
  :building,
  name:     "Stade de Marseille",
  lat:      0.25,
  long:     0.25,
  street:   "11 rue de la paix",
  zipcode:  "13000",
  city:     "Marseille",
  country:  "France",
  owner_id: @owner1.id
)

puts "OWNER BUILDINGs seeds done !"
puts "====================="

@building_place10 = FactoryBot.create(
  :place,
  name:        "Salle de réception",
  description: "Magnifique salle de réception situé dans la partie basse de l'hotel",
  total_price: 1750,
  unit_price:  50,
  capacity:    40,
  building_id: @owner_building.id
)

@building_place20 = FactoryBot.create(
  :place,
  name:        "Salle de concert est",
  description: "Magnifique salle de concert avec estrade entièrement équipé, idéal pour conférence",
  total_price: 45000,
  unit_price:  20,
  capacity:    3000,
  building_id: @owner_building2.id
)

@building_place21 = FactoryBot.create(
  :place,
  name:        "Salle de spectable ouest",
  description: "Magnifique salle de spectacle, idéal pour grande réunion et repas d'affaires",
  total_price: 4800,
  unit_price:  35,
  capacity:    150,
  building_id: @owner_building2.id
)

@building_place30 = FactoryBot.create(
  :place,
  name:        "Loge Est",
  description: "Superbe loge avec veranda surplombant le stade, idéale pour petit meeting d'affaires.",
  total_price: 1200,
  unit_price:  150,
  capacity:    10,
  building_id: @owner_building3.id
)

@building_place31 = FactoryBot.create(
  :place,
  name:        "Salle de réunion",
  description: "Notre Salle de réunion saura vous accueillir vous et vos convive afin de répondre a vos exigences professionelles",
  total_price: 20000,
  unit_price:  100,
  capacity:    250,
  building_id: @owner_building3.id
)

@building_place32 = FactoryBot.create(
  :place,
  name:        "Refectoire Ouest",
  description: "Ce refectoire entierement refait a neuf et tout équipé, moderne et d'un style industrielle vous permettra a coup sure de finalisé vos contrats",
  total_price: 12000,
  unit_price:  50,
  capacity:    250,
  building_id: @owner_building3.id
)

puts "BUILDING PLACES seeds done !"
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
