class AddTaxToOrderLineItem < ActiveRecord::Migration[7.0]
  def change
    add_column :order_line_items, :tax, :float
  end
end
