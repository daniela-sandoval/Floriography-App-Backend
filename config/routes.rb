Rails.application.routes.draw do
  resources :favorites
  resources :flowers
  resources :bouquet_flowers
  resources :bouquets
  resources :adjectives
  resources :tones
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post "/analyze", to: "analyzer#analyze"

  post '/bouquet_adj', to: "bouquets#create_adj"
  post '/rand_bouquets', to: "bouquets#create_rand"
  post '/user_favorites', to: "favorites#user_favorites"
  post "/login", to: "auth#create"
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
end
