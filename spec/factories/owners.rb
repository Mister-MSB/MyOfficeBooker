FactoryBot.define do
  factory :owner do
    email                 "owner@msb.com"
    password              "password"
    password_confirmation "password"
    firstname             "Owner"
    lastname              "MSB"
  end
end
