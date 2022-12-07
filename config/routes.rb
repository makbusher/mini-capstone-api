Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/all_products" => "products#all_products"
  get "/product/:id" => "products#singular"
  # get "/first_product" => "products#first"
  # get "/second_product" => "products#second"
  # get "/third_product" => "products#third"
end
