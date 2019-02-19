require 'test_helper'

class HighLevelGroupTermTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save high level group term without code" do
    hlgt = HighLevelGroupTerm.new
    assert_not hlgt.save
  end
end
