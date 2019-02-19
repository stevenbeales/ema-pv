require 'test_helper'

class AgeGroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save age group without code" do
    age_group = AgeGroup.new
    assert_not age_group.save
  end
end
