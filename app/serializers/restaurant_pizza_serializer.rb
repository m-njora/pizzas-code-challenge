class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id, :price

  belongs_to :restaurant
  belongs_to :pizza

end
