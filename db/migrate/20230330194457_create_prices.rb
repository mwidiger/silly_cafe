class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.string :item_id
      t.float :price

      t.timestamps
    end
    add_index :prices, :item_id
  end
end
