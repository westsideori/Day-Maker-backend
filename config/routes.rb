Rails.application.routes.draw do
  resources :day_restaurants
  resources :day_attractions
  resources :restaurants
  resources :attractions
  resources :days
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
