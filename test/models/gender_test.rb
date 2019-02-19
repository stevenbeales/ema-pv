require 'test_helper'

class GenderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save gender without code" do
    gender = Gender.new
    assert_not gender.save
  end
end
