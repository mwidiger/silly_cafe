- Sells a bunch of items
- Each item has a tax rate
- Cart
- Order total
- Time to complete

items
  id
  name

prices
  id
  item_id
  price
  created_at

tax_rates
  id
  item_id
  tax_rate
  created_at

order
  id
  estimated_deliver_at
  created_at

discounts
  id
  item_id
  discount_rate (percent)
  when_ordered_item_id
  created_at
  deleted_at

order_line_item
  id
  order_id
  item_id
  price
  discount_id
  discount_value
  tax_rate
  total_tax_amount


