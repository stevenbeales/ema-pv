require 'test_helper'

class FrequencyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save frequency without code" do
    frequency = Frequency.new
    assert_not frequency.save
  end
end
