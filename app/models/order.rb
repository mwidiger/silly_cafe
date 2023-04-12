class Order < ApplicationRecord
  acts_as_paranoid

  belongs_to :user
    
  has_many :line_items, class_name: "OrderLineItem"
  has_many :order_discounts
  has_many :discounts, through: :order_discounts
end
