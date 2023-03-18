class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.string :name
      t.string :ingredients
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
