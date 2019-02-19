require "application_system_test_case"

class HighLevelGroupTermsTest < ApplicationSystemTestCase
  setup do
    @high_level_group_term = high_level_group_terms(:one)
  end

  test "visiting the index" do
    visit high_level_group_terms_url
    assert_selector "h1", text: "High Level Group Terms"
  end

  test "creating a High level group term" do
    visit high_level_group_terms_url
    click_on "New High Level Group Term"

    fill_in "Code", with: @high_level_group_term.code
    click_on "Create High level group term"

    assert_text "High level group term was successfully created"
    click_on "Back"
  end

  test "updating a High level group term" do
    visit high_level_group_terms_url
    click_on "Edit", match: :first

    fill_in "Code", with: @high_level_group_term.code
    click_on "Update High level group term"

    assert_text "High level group term was successfully updated"
    click_on "Back"
  end

  test "destroying a High level group term" do
    visit high_level_group_terms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "High level group term was successfully destroyed"
  end
end
