class AddDeletedAtToOrderLineItem < ActiveRecord::Migration[7.0]
  def change
    add_column :order_line_items, :deleted_at, :datetime
  end
end
