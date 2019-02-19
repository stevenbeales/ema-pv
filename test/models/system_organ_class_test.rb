require 'test_helper'

class SystemOrganClassTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    test "should not save system organ class without soc_code" do
    soc = SystemOrganClass.new
    assert_not soc.save
  end
end
