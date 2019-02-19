require "application_system_test_case"

class HighLevelTermsTest < ApplicationSystemTestCase
  setup do
    @high_level_term = high_level_terms(:one)
  end

  test "visiting the index" do
    visit high_level_terms_url
    assert_selector "h1", text: "High Level Terms"
  end

  test "creating a High level term" do
    visit high_level_terms_url
    click_on "New High Level Term"

    fill_in "Code", with: @high_level_term.code
    click_on "Create High level term"

    assert_text "High level term was successfully created"
    click_on "Back"
  end

  test "updating a High level term" do
    visit high_level_terms_url
    click_on "Edit", match: :first

    fill_in "Code", with: @high_level_term.code
    click_on "Update High level term"

    assert_text "High level term was successfully updated"
    click_on "Back"
  end

  test "destroying a High level term" do
    visit high_level_terms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "High level term was successfully destroyed"
  end
end
