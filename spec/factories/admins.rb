FactoryBot.define do
  factory :admin, class: AdminUser do
    email                 "admin@msb.com"
    password              "password"
    password_confirmation "password"
  end
end
