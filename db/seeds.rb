puts "seeding pizzas 🍕...."
# Seed data for pizzas table
10.times do
    Pizza.create(
      name: Faker::Food.dish,
      ingredients: Faker::Food.ingredient,
      description: Faker::Food.description,
      price: Faker::Commerce.price(range: 1..30.0, as_string: false)
    )
  end
  
  # Seed data for restaurant_pizzas table
  10.times do
    RestaurantPizza.create(
      name: Faker::Food.dish,
      ingredients: Faker::Food.ingredient,
      description: Faker::Food.description,
      price: Faker::Commerce.price(range: 1..30.0, as_string: false)
    )
  end
  
  # Seed data for restaurants table
  10.times do
    Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address,
      description: Faker::Restaurant.description,
      review: Faker::Restaurant.review
    )
  end
  
puts "done seeding"