class OrderLineItem < ApplicationRecord
  before_create :ensure_action_comes_from_factory
  before_update :ensure_action_comes_from_factory
  before_destroy :ensure_action_comes_from_factory

  acts_as_paranoid
  
  belongs_to :order
  belongs_to :item
  has_many :discounts

  validates_presence_of :quantity, :item_id, :order_id

  def ensure_action_comes_from_factory
    raise CustomException::InvalidCallerError.new("No, use OrderLineItemFactory to create OrderLineItems") unless Validation::OrderLineItemFactoryCheck.pass(caller_locations) 
  end
end
