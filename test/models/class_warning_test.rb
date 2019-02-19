require 'test_helper'

class ClassWarningTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save class warning without code" do
    class_warning = ClassWarning.new
    assert_not class_warning.save
  end
end
