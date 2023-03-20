class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.string :name, null:false
      t.string :ingredients, null:false
      t.string :description, null:false
      t.decimal :price, null:false

      t.timestamps
    end
  end
end
