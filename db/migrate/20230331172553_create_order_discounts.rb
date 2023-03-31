class CreateOrderDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :order_discounts do |t|
      t.string :order_id
      t.string :discount_id

      t.timestamps
    end
    add_index :order_discounts, :order_id
    add_index :order_discounts, :discount_id
  end
end
