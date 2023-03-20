class RestaurantsController < ApplicationController
  #GET /restaurants

  def index

    restaurants = Restaurant.all
    render json: restaurants

  end
# GET /restaurants/:id
def show
  restaurant = Restaurant.find_by(id: params[:id])
  if restaurant
    render json: restaurant
  else
    render json: { error: "Restaurant not found" }, status: :not_found
  end
end

  def create
  end
end
