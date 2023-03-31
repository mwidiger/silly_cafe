class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.string :item_id
      t.float :discount_rate
      t.string :when_ordered_item_id

      t.timestamps
    end
    add_index :discounts, :item_id
    add_index :discounts, :when_ordered_item_id
  end
end
