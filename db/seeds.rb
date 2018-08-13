puts "SEEDING NOW !"
puts "====================="

#ADMIN
@admin = FactoryBot.create(
  :admin
)

puts "ADMIN seeds done !"
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

puts "USER seeds done !"
puts "====================="
