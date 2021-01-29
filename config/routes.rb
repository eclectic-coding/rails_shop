Rails.application.routes.draw do
  devise_for :users

  resources :products

  root to: 'static#home'

end
