puts "SEEDING NOW !"
puts "====================="

#ADMIN
@admin = FactoryBot.create(
  :admin
)

puts "ADMINS seeds done !"
puts "====================="

#USER
@user1 = FactoryBot.create(
  :user,
  email:                 "user1@msb.com",
  password:              "password",
  password_confirmation: "password",
  firstname:             "User",
  lastname:              "MSB",
  mobile:                "0102030405",
  phone:                 "0607080910",
  sex:                   "Male"
)

puts "USERS seeds done !"
puts "====================="

@address = FactoryBot.create(
  :address,
  street:  "11 place de la concorde",
  country: "France",
  zipcode: "75001",
  city:    "Paris",
  usage:    "Living",
  user_id: @user1.id
)

puts "USER ADDRESSES seeds done !"
puts "====================="
