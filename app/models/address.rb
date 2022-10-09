class Address < ApplicationRecord
  belongs_to :customer
  validates :name, :postal_code, :address, presence: true

  def address_display
    '〒' + postal_code + ' ' + address + ' ' + name
  end
end
