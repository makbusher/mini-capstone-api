class ProductsController < ApplicationController

  def index
    pp current_user
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
    @product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      description: params[:input_description],
      inventory: params[:input_inventory]
      # supplier_id: 
    )
    if @product.save
      # params[:images].each do |image|
      #   image = Image.new(
      #     url: image,
      #     product_id: @product.id
      #   )
      #   image.save
      # end
      # # render json: product.as_json
      render "products/show"
    else 
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.inventory = params[:inventory] || product.inventory
    product.supplier_id = params[:supplier_id] || product.supplier_id
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
