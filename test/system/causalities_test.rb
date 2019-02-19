require "application_system_test_case"

class CausalitiesTest < ApplicationSystemTestCase
  setup do
    @causality = causalities(:one)
  end

  test "visiting the index" do
    visit causalities_url
    assert_selector "h1", text: "Causalities"
  end

  test "creating a Causality" do
    visit causalities_url
    click_on "New Causality"

    fill_in "Code", with: @causality.code
    click_on "Create Causality"

    assert_text "Causality was successfully created"
    click_on "Back"
  end

  test "updating a Causality" do
    visit causalities_url
    click_on "Edit", match: :first

    fill_in "Code", with: @causality.code
    click_on "Update Causality"

    assert_text "Causality was successfully updated"
    click_on "Back"
  end

  test "destroying a Causality" do
    visit causalities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Causality was successfully destroyed"
  end
end
