require "application_system_test_case"

class AdverseReactionTypesTest < ApplicationSystemTestCase
  setup do
    @adverse_reaction_type = adverse_reaction_types(:one)
  end

  test "visiting the index" do
    visit adverse_reaction_types_url
    assert_selector "h1", text: "Adverse Reaction Types"
  end

  test "creating a Adverse reaction type" do
    visit adverse_reaction_types_url
    click_on "New Adverse Reaction Type"

    fill_in "Name", with: @adverse_reaction_type.name
    click_on "Create Adverse reaction type"

    assert_text "Adverse reaction type was successfully created"
    click_on "Back"
  end

  test "updating a Adverse reaction type" do
    visit adverse_reaction_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @adverse_reaction_type.name
    click_on "Update Adverse reaction type"

    assert_text "Adverse reaction type was successfully updated"
    click_on "Back"
  end

  test "destroying a Adverse reaction type" do
    visit adverse_reaction_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adverse reaction type was successfully destroyed"
  end
end
