class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :item

  validates :amount, :item_id, presence: true

  def sum_of_price
    item.taxin_price * amount
  end
end
