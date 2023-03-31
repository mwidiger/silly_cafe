class CreateOrderLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_line_items do |t|
      t.string :order_id
      t.string :item_id
      t.float :price

      t.timestamps
    end
    add_index :order_line_items, :order_id
    add_index :order_line_items, :item_id
  end
end
