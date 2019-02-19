require 'test_helper'

class PostMarketingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save post marketing without code" do
    post_marketing = PostMarketing.new
    assert_not post_marketing.save
  end
end
