require 'test_helper'

class CausalityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    test "should not causality without code" do
    causality = Causality.new
    assert_not causality.save
  end
end
