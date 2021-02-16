Rails.application.routes.draw do
  # resources :day_restaurants
  # resources :day_attractions
  # resources :restaurants
  # resources :attractions
  # resources :days
  # resources :users
  root "welcome#index"

  get "/users/:id", to: 'users#show'
  get '/users/:id/days', to: 'users#days'
  get "/me", to: "users#show"
  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  patch "/users/:id", to: 'users#update'
  

  get "/restaurants", to: 'restaurants#index'
  get "/restaurants/:id", to: 'restaurants#show'
  get "/restaurants/category/:category", to: 'restaurants#beef'

  get "/attractions", to: 'attractions#index'
  get "/attractions/:id", to: 'attractions#show'
  get "/attractions/hour/:hour", to: 'attractions#beef'

  # get "/days", to: "users#days"
  get "/days/:id", to: 'days#show'
  post "/days", to: 'days#create'
  delete "/days/:id", to: "days#destroy"

  get "/day_restaurants", to: "day_restaurants#index"
  post "/day_restaurants", to: "day_restaurants#create"
  patch "/day_restaurants/:id", to: "day_restaurants#update"

  get "/day_attractions", to: "day_attractions#index"
  post "/day_attractions", to: "day_attractions#create"
  patch "/day_attractions/:id", to: "day_attractions#update"
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
