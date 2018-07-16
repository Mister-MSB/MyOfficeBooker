Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  
  root 'home#index'
end
