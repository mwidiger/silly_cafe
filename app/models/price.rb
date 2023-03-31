class Price < ApplicationRecord
  belongs_to :item
  validates_presence_of :price
end
