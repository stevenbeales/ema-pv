require "application_system_test_case"

class LowLevelTermsTest < ApplicationSystemTestCase
  setup do
    @low_level_term = low_level_terms(:one)
  end

  test "visiting the index" do
    visit low_level_terms_url
    assert_selector "h1", text: "Low Level Terms"
  end

  test "creating a Low level term" do
    visit low_level_terms_url
    click_on "New Low Level Term"

    fill_in "Code", with: @low_level_term.code
    click_on "Create Low level term"

    assert_text "Low level term was successfully created"
    click_on "Back"
  end

  test "updating a Low level term" do
    visit low_level_terms_url
    click_on "Edit", match: :first

    fill_in "Code", with: @low_level_term.code
    click_on "Update Low level term"

    assert_text "Low level term was successfully updated"
    click_on "Back"
  end

  test "destroying a Low level term" do
    visit low_level_terms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Low level term was successfully destroyed"
  end
end
