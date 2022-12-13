class ProductsController < ApplicationController

  def index
    @products = Product.all
    # render json: products.as_json
    render "products/index"
  end

  def show
    @product = Product.find_by(id: params[:id])
    # render json: product.as_json(methods: [:friendly_created_at, :is_discounted?, :tax, :total])
    render "products/show"
  end

  def create
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description],
      inventory: params[:input_inventory]
    )
    if product.save
      render json: product.as_json
      # render "products/show"
    else 
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.image_url = params[:image_url]
    product.description = params[:description]
    product.inventory = params[:inventory]
    if product.save
      render json: product.as_json
    # render "products/show"
    else 
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "This product was removed"}
  end

end
