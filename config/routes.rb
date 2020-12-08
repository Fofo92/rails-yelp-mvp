Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'

  #   A visitor can see the list of all restaurants.
  get 'restaurants', to: 'restaurants#index'

  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET "restaurants/38"
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # A visitor can add a new review to a restaurant
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
end
