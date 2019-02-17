require "application_system_test_case"

class AdverseReactionsTest < ApplicationSystemTestCase
  setup do
    @adverse_reaction = adverse_reactions(:one)
  end

  test "visiting the index" do
    visit adverse_reactions_url
    assert_selector "h1", text: "Adverse Reactions"
  end

  test "creating a Adverse reaction" do
    visit adverse_reactions_url
    click_on "New Adverse Reaction"

    fill_in "Adverse reaction type", with: @adverse_reaction.adverse_reaction_type_id
    fill_in "Product", with: @adverse_reaction.product_id
    fill_in "Substance", with: @adverse_reaction.substance_id
    click_on "Create Adverse reaction"

    assert_text "Adverse reaction was successfully created"
    click_on "Back"
  end

  test "updating a Adverse reaction" do
    visit adverse_reactions_url
    click_on "Edit", match: :first

    fill_in "Adverse reaction type", with: @adverse_reaction.adverse_reaction_type_id
    fill_in "Product", with: @adverse_reaction.product_id
    fill_in "Substance", with: @adverse_reaction.substance_id
    click_on "Update Adverse reaction"

    assert_text "Adverse reaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Adverse reaction" do
    visit adverse_reactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adverse reaction was successfully destroyed"
  end
end
