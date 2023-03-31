class Item < ApplicationRecord
  validates_presence_of :name
  has_one :price
  has_many :order_line_items
  has_many :discounts
  has_one :tax_rate
end
