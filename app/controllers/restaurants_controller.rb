class RestaurantsController < ApplicationController
  #GET /restaurants

  def index

    restaurants = Restaurant.all
    render json: restaurants

  end

  def show
    restaurant = restaurant.find(params[:id])
    if restaurant
      render json: restaurant
    else
      render json: { error: "restaurant not found"}, status: :not_found
    end

  end

  def create
  end
end
