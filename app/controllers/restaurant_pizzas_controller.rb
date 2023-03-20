class RestaurantPizzasController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with: :create_error_message

  def create 
    restaurant_pizza = RestaurantPizza.create!(res_pizza_params)
    render json:restaurant_pizza, status: :created

end

  private

 def res_pizza_params 
    params.permit(:price,:restaurant_id,:pizza_id)
 end

 def create_error_message 
    render json: { errors: "validation errors"}, status: :unprocessable_entity
 end

end
