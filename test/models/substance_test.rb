require 'test_helper'

class SubstanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save substance without name" do
    substance = Substance.new
    assert_not substance.save
  end
  
  test "should save substance with name" do
    substance = Substance.new
    substance.name = 'My Substance'
    assert substance.save
  end
end
