Rails.application.routes.draw do
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/create'
  resources :restaurants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
