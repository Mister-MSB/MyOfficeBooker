Rails.application.routes.draw do

  devise_for :bookers,
    controllers: {passwords: "bookers/passwords", registrations: "bookers/registrations", sessions: "bookers/sessions"},
    path_names: { sign_in: 'booker/connexion', sign_out: 'booker/deconnexion', sign_up: 'booker/inscription'}

  devise_for :owners,
    controllers: {passwords: "owners/passwords", registrations: "owners/registrations", sessions: "owners/sessions"},
    path_names: { sign_in: 'owner/connexion', sign_out: 'owner/deconnexion', sign_up: 'owner/inscription'}

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get "/style_guide/*id" => 'style_guide#show', as: :page, format: false

  root 'home#index'


end
