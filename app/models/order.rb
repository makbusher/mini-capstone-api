class Order < ApplicationRecord
  def subtotal 
    product = Product.find_by(id: params[:product_id])
    subtotal = product.price * params[:quantity]
    p subtotal 
  end
  def tax
    tax = subtotal * 0.09
    p tax
  end
  def total
    total = tax + subtotal 
    p total
  end
end
