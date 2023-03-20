RestaurantPizza.destroy_all
Pizza.destroy_all
Restaurant.destroy_all

puts "seeding pizzas 🍕...."
# # Seed data for pizzas table
# 10.times do
#     Pizza.create(
#       name: Faker::Food.dish,
#       ingredients: Faker::Food.ingredient,
#       price: Faker::Commerce.price(range: 1..30.0, as_string: false)
#     )
#   end
  
# # Seed data for restaurant_pizzas table
# 10.times do
#   RestaurantPizza.create(
#     "pizza_id": rand(1..10),
#     "restaurant_id": rand(1..10),
#     name: Faker::Food.dish,
#     price: Faker::Commerce.price(range: 1..30.0, as_string: false)
#   )
# end

  
10.times do
  res= Restaurant.create(
          "name": Faker::Restaurant.name,
          "address": Faker::Address.full_address
      )
  
     piz = Pizza.create(
          "name": Faker::Food.dish,
          "ingredients": Faker::Food.ingredient
          "price": rand(1.0..29.0),

      )
      rand(3..5).times do
        RestaurantPizza.create(
            "price": rand(1.0..29.0),
            "pizza_id": rand(1..10),
            "restaurant_id": rand(1..10)
        )
      end
    end    

puts "done seeding"