class RestaurantPizza < ApplicationRecord
    belongs_to :pizzas
    belongs_to :restaurants
end
