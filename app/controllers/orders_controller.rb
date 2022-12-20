class OrdersController < ApplicationController
  before_action :authenticate_user

  def index 
    orders = Order.where(user_id: current_user.id)
    render json: orders.as_json
  end
 
  def create 
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted") 
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity
    end
    tax_rate = 0.09
    calculated_tax = calculated_subtotal * tax_rate
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id, 
      subtotal: caclulated_subtotal,
      tax: calculated_tax,
      total: caclulated_total
      )
    order.save

    carted_products.each do |carted_product|
      carted_product.order_id = order.id
      carted_product.status = "purchased"
      carted_product.save
    end

    render json: order.as_json
  end

  def show 
    order = Order.find_by(id: params[:id])
    if current_user.id == order.user_id
      render template: "orders/show"
    else 
      render json: {}, status: unauthorized
    end
  end

end
