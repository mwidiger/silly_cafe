class AddDeletedAtToTaxRate < ActiveRecord::Migration[7.0]
  def change
    add_column :tax_rates, :deleted_at, :datetime
  end
end
