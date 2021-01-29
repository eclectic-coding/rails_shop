Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]

  resources :products

  root to: 'static#home'

end
