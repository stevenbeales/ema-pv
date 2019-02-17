require "application_system_test_case"

class SubstancesTest < ApplicationSystemTestCase
  setup do
    @substance = substances(:one)
  end

  test "visiting the index" do
    visit substances_url
    assert_selector "h1", text: "Substances"
  end

  test "creating a Substance" do
    visit substances_url
    click_on "New Substance"

    fill_in "Name", with: @substance.name
    click_on "Create Substance"

    assert_text "Substance was successfully created"
    click_on "Back"
  end

  test "updating a Substance" do
    visit substances_url
    click_on "Edit", match: :first

    fill_in "Name", with: @substance.name
    click_on "Update Substance"

    assert_text "Substance was successfully updated"
    click_on "Back"
  end

  test "destroying a Substance" do
    visit substances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Substance was successfully destroyed"
  end
end
