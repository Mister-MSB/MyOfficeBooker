AdminUser.create!(email: 'admin@myspacebooker.fr', password: 'password', password_confirmation: 'password') if Rails.env.development?
