require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @product = products(:product_one)
  end

  test "should get products index" do
    get products_url
    assert_response :success
  end
end
