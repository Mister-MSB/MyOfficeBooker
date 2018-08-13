Rails.application.routes.draw do

  devise_for :users, controllers: {passwords: "passwords", registrations: "registrations", sessions: "sessions"}
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get "/style_guide/*id" => 'style_guide#show', as: :page, format: false

  root 'home#index'


end
