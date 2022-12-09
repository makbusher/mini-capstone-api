class Product < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09
    p tax
  end

  def total 
    total = tax + price 
    p total
  end
end
