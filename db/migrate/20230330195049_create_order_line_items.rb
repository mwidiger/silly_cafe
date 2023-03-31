class CreateOrderLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_line_items do |t|
      t.integer :order_id, index: true
      t.integer :item_id, index: true
      t.float :price

      t.timestamps
    end
  end
end
