class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.integer :item_id, index: true

      t.float :discount_rate
      t.integer :when_ordered_item_id, index: true

      t.timestamps
    end
  end
end
