FactoryBot.define do
  factory :user do
    email                 "user@msb.com"
    password              "password"
    password_confirmation "password"
    firstname             "User"
    lastname              "MSB"
  end
end
