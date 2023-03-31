class OrderLineItem < ApplicationRecord
  belongs_to :order
  belongs_to :item
  has_many :discounts
end
