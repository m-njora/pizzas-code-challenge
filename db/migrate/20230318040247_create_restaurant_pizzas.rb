class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :pizza_id, default: 0, null: false
      t.integer :restaurant_id, default: 0, null: false
      t.string :name, null:false
      t.decimal :price, null:false

      t.timestamps
    end
  end
end
