FactoryBot.define do
  factory :booker do
    email                 "booker@msb.com"
    password              "password"
    password_confirmation "password"
    firstname             "Booker"
    lastname              "MSB"
  end
end
