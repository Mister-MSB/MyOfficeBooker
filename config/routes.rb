Rails.application.routes.draw do

  devise_for :bookers,
    controllers: {passwords: "bookers/passwords", registrations: "bookers/registrations", sessions: "bookers/sessions"},
    path_names: { sign_in: 'connexion', sign_out: 'deconnexion', sign_up: 'inscription'}

  devise_for :owners,
    controllers: {passwords: "owners/passwords", registrations: "owners/registrations", sessions: "owners/sessions"},
    path_names: { sign_in: 'connexion', sign_out: 'deconnexion', sign_up: 'inscription'}

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get "/style_guide/*id" => 'style_guide#show', as: :page, format: false

  get 'owners/home', to: 'owners_home#index', as: :owners_home
  root 'home#index'

  namespace :owners do
    resources :buildings
  end


end
