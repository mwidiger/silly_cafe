class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :estimated_deliver_at, index: true
      t.float :item_cost
      t.float :total_tax
      t.float :total_sale
      t.timestamps
    end
  end
end
