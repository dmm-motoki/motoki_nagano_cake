class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :item

  def sum_of_price
    item.taxin_price * amount
  end
end
