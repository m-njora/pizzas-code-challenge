class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  # def index
  #   restaurant_pizzas = RestaurantPizza.all
  #   render json: restaurant_pizzas
  # end
 
 
 
  def create
  new_obj = RestaurantPizza.create!(restaurant_pizza_params)
  pizza = Pizza.find(new_obj.pizza_id)
  render json: pizza, status: :created
  
    end
  #ensures only  specific attributes are assigned to the restaurantpizza
    private
    def restaurant_pizza_params
      params.permit( :price, :pizza_id, :restaurant_id)
    end
  
  def render_response(invalid)
    render json: {errors: invalid.record.errors }, status:
    :unprocessable_entity
  end
  
end
