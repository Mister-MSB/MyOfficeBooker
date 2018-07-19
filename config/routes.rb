Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  get "/style_guide/*id" => 'style_guide#show', as: :page, format: false

end
