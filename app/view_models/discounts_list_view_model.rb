class DiscountsListViewModel < BaseViewModel
  attr_reader :discounts

  def initialize(params = {})
    @discounts = Discount.includes(:item).includes(:when_ordered_by_item).all
  end

  def self.get_all
    new
  end
end