class RestaurantPizzasController < ApplicationController
  def index
    restaurant_pizzas = RestaurantPizza.all
    render json: restaurant_pizzas
  end
 
 
 
  def create

      restaurant_pizza = RestaurantPizza.create(restaurantpizza_params)
  
  
      if restaurant_pizza.save
      render json: restaurant_pizza, status: :created
      else
        render json: { error: "validation errors" }, status: :not_found
      end
  
    end
  #ensures only  specific attributes are assigned to the restaurantpizza
    private
    def restaurant_pizza_params
      params.permit(:name, :ingredients, :description, :price)
    end
  
  
  
end
