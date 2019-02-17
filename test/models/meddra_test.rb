require 'test_helper'

class MeddraTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save meddra without preferred_term or preferred_term_code" do
    meddra = Meddra.new
    assert_not meddra.save
  end
  
  test "should save meddra with preferred_term or preferred_term_code" do
    meddra = Meddra.new
    meddra.preferred_term = 'My term'
    meddra.preferred_term_code = 'My code'
    assert meddra.save
  end
  
end
