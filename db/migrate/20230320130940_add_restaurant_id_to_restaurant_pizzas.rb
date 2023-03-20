class AddRestaurantIdToRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurant_pizzas, :restaurant_id, :integer
  end
end
