class OrdersController < ApplicationController
  def create 

    product = Product.find_by(id: params[:product_id])
    subtotal = product.price * params[:quantity]
    tax_rate = 0.09
    tax = subtotal * tax_rate
    total = subtotal + tax
    
    if current_user
      order = Order.new(
      user_id: current_user.id, 
      product_id: params[:product_id], 
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: total
      )
      if order.save
        render json: order.as_json(methods: [:subtotal, :tax, :total])
      else
        render json: order.error.full_messages
      end
    else
      render json: {message: "You must login first"}
    end
  end

  def show 
    order = Order.find_by(id: params[:id])
    if current_user.id == order.user_id
      render json: order.as_json
    else 
      render json: {message: "Please login"}
    end
  end

  def index 
    orders = Order.where(user_id: current_user.id)
    render json: orders.as_json
  end
end
