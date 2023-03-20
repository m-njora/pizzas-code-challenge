class RestaurantPizza < ApplicationRecord
    #restaurant pizza belongs to a specifiv restaurantand a specific pizza
    belongs_to :restaurant
    belongs_to :pizza
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 30 }
    validates :pizza_id, presence: true
    validates :restaurant_id, presence: true
    validates_associated :pizza, :restaurant

end
