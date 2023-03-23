class RestaurantPizzasController < ApplicationController
# rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  # def index
  #   restaurant_pizzas = RestaurantPizza.all
  #   render json: restaurant_pizzas
  # end
 
 
 
  def create
    restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
    if restaurant_pizza.save
      pizza = Pizza.find(restaurant_pizza.pizza_id)
      render json: pizza, status: :created
  else
    render_unprocessable_entity_response(restaurant_pizza)
  end
  end
  #ensures only  specific attributes are assigned to the restaurantpizza
    private
    def restaurant_pizza_params
      params.permit( :price, :pizza_id, :restaurant_id)
    end
  
    def render_unprocessable_entity_response(resource)
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  
end
