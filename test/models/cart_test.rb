require "test_helper"

class CartTest < ActiveSupport::TestCase
  def setup
    @cart = carts(:one)
    @ruby_book = products(:ruby)
    @rails_book = products(:rails)
  end

  test "adding unique products increases line items count" do
    @cart.add_product(@ruby_book).save!
    @cart.add_product(@rails_book).save!
    puts @cart.line_items.map { |li| [li.product_id, li.quantity] }.inspect
    assert_equal 2, @cart.line_items.count, "Cart should have 2 unique line items"
  end

  test "adding duplicate product increases quantity not line items" do
    @cart.add_product(@ruby_book).save!
    @cart.add_product(@ruby_book).save!
    puts @cart.line_items.map { |li| [li.product_id, li.quantity] }.inspect
    assert_equal 1, @cart.line_items.count, "Cart should still have 1 line item"
    assert_equal 2, @cart.line_items.first.quantity, "Quantity should be 2 for the same product"
  end
end
