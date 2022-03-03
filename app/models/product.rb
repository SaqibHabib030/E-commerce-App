class Product < ApplicationRecord
    belongs_to :user
    has_many :order_items
    has_one_attached :image

    validates :title, presence: true, length: { maximum: 100 }
    validates :price, presence: true, numericality:{only_integer: true}, length: { maximum: 7 }
    validates :description, presence: true, length: { maximum: 10000 }
    validates :image, presence: true
end
