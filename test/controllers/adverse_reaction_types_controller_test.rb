require 'test_helper'

class AdverseReactionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adverse_reaction_type = adverse_reaction_types(:one)
  end

  test "should get index" do
    get adverse_reaction_types_url
    assert_response :success
  end

  test "should get new" do
    get new_adverse_reaction_type_url
    assert_response :success
  end

  test "should create adverse_reaction_type" do
    assert_difference('AdverseReactionType.count') do
      post adverse_reaction_types_url, params: { adverse_reaction_type: { name: @adverse_reaction_type.name } }
    end

    assert_redirected_to adverse_reaction_type_url(AdverseReactionType.last)
  end

  test "should show adverse_reaction_type" do
    get adverse_reaction_type_url(@adverse_reaction_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_adverse_reaction_type_url(@adverse_reaction_type)
    assert_response :success
  end

  test "should update adverse_reaction_type" do
    patch adverse_reaction_type_url(@adverse_reaction_type), params: { adverse_reaction_type: { name: @adverse_reaction_type.name } }
    assert_redirected_to adverse_reaction_type_url(@adverse_reaction_type)
  end

  test "should destroy adverse_reaction_type" do
    assert_difference('AdverseReactionType.count', -1) do
      delete adverse_reaction_type_url(@adverse_reaction_type)
    end

    assert_redirected_to adverse_reaction_types_url
  end
end
