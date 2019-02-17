require 'test_helper'

class SubstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @substance = substances(:one)
  end

  test "should get index" do
    get substances_url
    assert_response :success
  end

  test "should get new" do
    get new_substance_url
    assert_response :success
  end

  test "should create substance" do
    assert_difference('Substance.count') do
      post substances_url, params: { substance: { name: @substance.name } }
    end

    assert_redirected_to substance_url(Substance.last)
  end

  test "should show substance" do
    get substance_url(@substance)
    assert_response :success
  end

  test "should get edit" do
    get edit_substance_url(@substance)
    assert_response :success
  end

  test "should update substance" do
    patch substance_url(@substance), params: { substance: { name: @substance.name } }
    assert_redirected_to substance_url(@substance)
  end

  test "should destroy substance" do
    assert_difference('Substance.count', -1) do
      delete substance_url(@substance)
    end

    assert_redirected_to substances_url
  end
end
