class Order < ApplicationRecord
  acts_as_paranoid
  
  validates_presence_of :estimated_deliver_at
  has_many :line_items, class_name: "OrderLineItem"
  has_many :order_discounts
  has_many :discounts, through: :order_discounts
end
