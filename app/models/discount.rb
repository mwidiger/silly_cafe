class Discount < ApplicationRecord
  belongs_to :item
  belongs_to :when_ordered_item, class_name: 'Item', validate: true
end
