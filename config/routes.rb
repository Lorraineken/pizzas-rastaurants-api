Rails.application.routes.draw do
  resources :restaurant_pizzas
  resources :pizzas, only: [:index]
  resources :restaurants, only: [:index,:show,:destroy]

end
