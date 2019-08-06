Rails.application.routes.draw do
  resources :favorites
  resources :flowers
  resources :bouquet_flowers
  resources :bouquets
  resources :adjectives
  resources :tones
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/analyze", to: "analyzer#analyze"
end
