Rails.application.routes.draw do
  resources :restaurant_pizzas
  resources :pizzas
  resources :restaurants, only: [:index,:show,:destroy]

end
