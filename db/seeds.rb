
puts "seeding pizzas 🍕...."
# Seed data for pizzas table
10.times do
    Pizza.create(
      name: Faker::Food.dish,
      ingredients: Faker::Food.ingredient,
      price: Faker::Commerce.price(range: 1..30.0, as_string: false)
    )
  end
  
# Seed data for restaurant_pizzas table
10.times do
  RestaurantPizza.create(
    "pizza_id": rand(1..10),
    "restaurant_id": rand(1..10),
    name: Faker::Food.dish,
    price: Faker::Commerce.price(range: 1..30.0, as_string: false)
  )
end

  
  # Seed data for restaurants table
  10.times do
    Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address,
    )
  end
  
puts "done seeding"