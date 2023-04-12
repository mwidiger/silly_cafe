class Factory::OrderLineItemFactory
  def self.create(params)
    ActiveRecord::Base.transaction do 
      oli = OrderLineItem.create!(params)
      OrderCalculator.update_order!(oli.order)
    end
  end
end
