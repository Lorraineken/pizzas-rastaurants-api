class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index 
    restaurant = Restaurant.all 
    render json: restaurant
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant, serializer: RestaurantShowSerializer
  end

  def destroy 
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    render json:{}, status: :no_content
  end

  private

  def render_not_found_response
    render json: {error: "Restaurant not found"}, status: :not_found
  end

end
