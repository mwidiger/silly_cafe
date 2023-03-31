class Item < ApplicationRecord
  acts_as_paranoid
  
  validates_presence_of :name
  has_one :price, dependent: :destroy
  has_many :order_line_items, dependent: :destroy
  has_many :discounts
  has_one :tax_rate, dependent: :destroy
end
