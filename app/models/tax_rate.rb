class TaxRate < ApplicationRecord
  belongs_to :item
  validates_presence_of :tax_rate
end
