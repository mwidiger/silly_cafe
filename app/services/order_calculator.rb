class OrderCalculator
  def self.update_order!(order)
    update_line_items!(order.line_items)
    update_order_record!(order)
  end

private

  def self.update_line_items!(line_items)
    # Update the line items with price and tax
    line_items.each do |line_item|
      item = line_item.item 
      line_item.price = item.price.price * line_item.quantity
      line_item.tax = line_item.price * item.tax_rate.tax_rate
      line_item.save!
    end
  end

  def self.update_order_record!(order)
    order.item_cost = order.line_items.map(&:price).sum
    order.total_tax = order.line_items.map(&:tax).sum
    order.total_sale = order.item_cost + order.total_tax
    order.save!
  end
end