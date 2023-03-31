class CreateTaxRates < ActiveRecord::Migration[7.0]
  def change
    create_table :tax_rates do |t|
      t.integer :item_id, index: true
      t.float :tax_rate

      t.timestamps
    end
  end
end
