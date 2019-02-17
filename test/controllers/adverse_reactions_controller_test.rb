require 'test_helper'

class AdverseReactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adverse_reaction = adverse_reactions(:one)
  end

  test "should get index" do
    get adverse_reactions_url
    assert_response :success
  end

  test "should get new" do
    get new_adverse_reaction_url
    assert_response :success
  end

  test "should create adverse_reaction" do
    assert_difference('AdverseReaction.count') do
      post adverse_reactions_url, params: { adverse_reaction: { adverse_reaction_type_id: @adverse_reaction.adverse_reaction_type_id, product_id: @adverse_reaction.product_id, substance_id: @adverse_reaction.substance_id } }
    end

    assert_redirected_to adverse_reaction_url(AdverseReaction.last)
  end

  test "should show adverse_reaction" do
    get adverse_reaction_url(@adverse_reaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_adverse_reaction_url(@adverse_reaction)
    assert_response :success
  end

  test "should update adverse_reaction" do
    patch adverse_reaction_url(@adverse_reaction), params: { adverse_reaction: { adverse_reaction_type_id: @adverse_reaction.adverse_reaction_type_id, product_id: @adverse_reaction.product_id, substance_id: @adverse_reaction.substance_id } }
    assert_redirected_to adverse_reaction_url(@adverse_reaction)
  end

  test "should destroy adverse_reaction" do
    assert_difference('AdverseReaction.count', -1) do
      delete adverse_reaction_url(@adverse_reaction)
    end

    assert_redirected_to adverse_reactions_url
  end
end
