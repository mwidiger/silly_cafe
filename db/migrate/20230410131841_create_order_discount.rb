class CreateOrderDiscount < ActiveRecord::Migration[7.0]
  def change
    create_table :order_discounts do |t|
      t.integer :order_id, index: true
      t.integer :discount, index: true

      t.timestamps
    end
  end
end
