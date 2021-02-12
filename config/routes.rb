Rails.application.routes.draw do
  # resources :day_restaurants
  # resources :day_attractions
  # resources :restaurants
  # resources :attractions
  # resources :days
  # resources :users
  root "welcome#index"

  post "/login", to: "users#login"
  get "/users/:id", to: 'users#show'
  patch "/users/:id", to: 'users#update'
  post "/users", to: 'users#create'

  get "/restaurants", to: 'restaurants#index'
  get "/restaurants/:id", to: 'restaurants#show'
  get "/restaurants/category/:category", to: 'restaurants#beef'

  get "/attractions", to: 'attractions#index'
  get "/attractions/:id", to: 'attractions#show'

  get "/days", to: "days#index"
  get "/days/:id", to: 'days#show'
  post "/days", to: 'days#create'

  post "/day_restaurants", to: "day_restaurants#create"
  patch "/day_restaurants/:id", to: "day_restaurants#update"

  post "/day_attractions", to: "day_attractions#create"
  patch "/day_attractions/:id", to: "day_attractions#update"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
