class OrderLineItem < ApplicationRecord

  acts_as_paranoid
  
  belongs_to :order
  belongs_to :item
  has_many :discounts

  validates_presence_of :quantity, :item_id, :order_id

  def initialize(params)
    raise CustomException::InvalidCallerError.new("No, use OrderLineItemFactory to create OrderLineItems") unless Validation::OrderLineItemFactoryCheck.pass(caller_locations) 
    super
  end
end
