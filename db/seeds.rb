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

#USER
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

@place = FactoryBot.create(
  :place
)

puts "PLACES seeds done !"
puts "====================="
