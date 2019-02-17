require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save product without name" do
    product = Product.new
    assert_not product.save
  end
  
  test "should save product with name" do
    product = Product.new
    product.name = 'My Product'
    assert product.save
  end
end
