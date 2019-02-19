require 'test_helper'

class HighLevelTermTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save high level term without code" do
    hlt = HighLevelTerm.new
    assert_not hlt.save
  end
end
