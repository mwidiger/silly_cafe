class TaxRate < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :item
  validates_presence_of :tax_rate
end
