require "test_helper"

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = products(:product_one)
  end

  test "should get products" do
    assert @product.valid?
  end
end