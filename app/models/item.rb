class Item < ApplicationRecord
  has_one_attached :image

  has_many :cart_items
  has_many :order_details
  belongs_to :genre

  validates :name, :introduction, :genre_id, :price, presence: true

  def taxin_price
    price*1.1
  end

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
  end
end
