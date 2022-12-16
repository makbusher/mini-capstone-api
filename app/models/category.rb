class Category < ApplicationRecord
  has_many :category_products

  def products 
    products = []
    category_products.each do |category_product|
      p category_product.product
    end
  end
end
