# class Pizza < ApplicationRecord
#     #establishes a one-to-many association between Restaurant and RestaurantPizza models
#     has_many :restaurant_pizzas

#     #establishes a many-to-many association between Restaurant and Pizza models, which is facilitated through the RestaurantPizza join model
#     has_many :restaurants, through: :restaurant_pizzas
# end
