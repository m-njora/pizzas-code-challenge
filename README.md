# PIZZA API

This is a Rails API for tracking pizza restaurants and their menus.

## Installation

To run this API locally, you must have Ruby and Rails installed on your machine. Once you have those installed, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the root directory of the project in your terminal.
3. Run `bundle install` to install all necessary gems.
4. Run `rails db:migrate` to create the necessary database tables.
5. Run `rails db:seed` to seed the database with sample data.
6. Start the Rails server by running `rails s`.
7. Use a tool like Postman to test the API endpoints.

## Models
The following relationships have been established between the models:

* A Restaurant has many Pizzas through RestaurantPizza
* A Pizza has many Restaurants through RestaurantPizza
* A RestaurantPizza belongs to a Restaurant and belongs to a Pizza

## Validations
The RestaurantPizza model has a validation that ensures the price is between 1 and 30.

## Routes
The following routes have been implemented:

# GET /restaurants
Returns a list of all restaurants in JSON format:

```
[
  {
    "id": 1,
    "name": "Sottocasa NYC",
    "address": "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    "id": 2,
    "name": "PizzArte",
    "address": "69 W 55th St, New York, NY 10019"
  }
]
```



<!-- Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
