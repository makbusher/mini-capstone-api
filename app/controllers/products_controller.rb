class ProductsController < ApplicationController

  def index
    products = Product.all
    render json: product.as_json
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description]
    )
    product.save
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = "book"
    product.price = 13
    product.image_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAx5pM2gp_FtrsLxGgP69Ej1TDb49UXWkgCQ&usqp=CAU"
    product.description = "a book you can read"
    product.save
    render json: product.as_json
  end

end
