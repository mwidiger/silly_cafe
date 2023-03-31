class OrderLineItem < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :order
  belongs_to :item
  has_many :discounts
end
