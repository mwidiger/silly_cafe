class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.integer :item_id, index: true
      t.float :price

      t.timestamps
    end
  end
end
