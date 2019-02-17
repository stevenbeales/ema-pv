require 'test_helper'

class AdverseReactionTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save adverse reaction type without name" do
    adverse_reaction_type = AdverseReactionType.new
    assert_not adverse_reaction_type.save
  end
   
  test "should save adverse_reaction_type with name" do
    adverse_reaction_type = AdverseReactionType.new
    adverse_reaction_type.name = 'My Adverse Reaction Type'
    assert adverse_reaction_type.save
  end
end
