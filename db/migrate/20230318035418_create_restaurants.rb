class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null:false
      t.string :address, null:false
      t.string :description, null:false
      t.string :review, null:false

      t.timestamps
    end
  end
end
