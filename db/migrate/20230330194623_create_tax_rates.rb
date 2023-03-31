class CreateTaxRates < ActiveRecord::Migration[7.0]
  def change
    create_table :tax_rates do |t|
      t.string :item_id
      t.float :tax_rate

      t.timestamps
    end
    add_index :tax_rates, :item_id
  end
end
