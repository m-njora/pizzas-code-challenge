class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients

  has_many :restaurants, through: :restaurant_pizzas

end
