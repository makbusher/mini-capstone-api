class ProductsController < ApplicationController

  def all_products
    products = Product.all
    render json: products.as_json
  end

  def first
    product = Product.first
    render json: product.as_json
  end

  def second
    product = Product.second
    render json: product.as_json
  end

  def third
    product = Product.third
    render json: product.as_json
  end
end
