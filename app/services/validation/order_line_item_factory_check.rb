module Validation

  class OrderLineItemFactoryCheck
    VALID_SOURCE_FILES = ['order_line_item_factory']
    
    def self.pass(caller_locations)
      VALID_SOURCE_FILES.any?{ |filename| caller_locations.any?{ |cl| cl.to_s.include?(filename) } }
    end
  end
end