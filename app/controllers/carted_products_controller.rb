class CartedProductsController < ApplicationController

  def index 
    # carted_products = current_user.carted_products.where(status: "carted")
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted") 
    render template: "carted_products/index"
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
    )
    carted_product.save
    render json: carted_product.as_json
  end

  def destroy 
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: {message: "This item has been removed from your cart."}
  end
end
