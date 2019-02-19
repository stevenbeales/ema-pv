require 'test_helper'

class LowLevelTermTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save low level term without code" do
    llt = LowLevelTerm.new
    assert_not llt.save
  end
end
