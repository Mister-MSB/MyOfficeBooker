Rails.application.routes.draw do

  devise_for :bookers,
    controllers: {passwords: "bookers/passwords", registrations: "bookers/registrations", sessions: "bookers/sessions"},
    path_names: { sign_in: 'connexion', sign_out: 'deconnexion'}
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get "/style_guide/*id" => 'style_guide#show', as: :page, format: false

  root 'home#index'


end
