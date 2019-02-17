require "application_system_test_case"

class MeddrasTest < ApplicationSystemTestCase
  setup do
    @meddra = meddras(:one)
  end

  test "visiting the index" do
    visit meddras_url
    assert_selector "h1", text: "Meddras"
  end

  test "creating a Meddra" do
    visit meddras_url
    click_on "New Meddra"

    fill_in "Preferred term", with: @meddra.preferred_term
    fill_in "Preferred term code", with: @meddra.preferred_term_code
    click_on "Create Meddra"

    assert_text "Meddra was successfully created"
    click_on "Back"
  end

  test "updating a Meddra" do
    visit meddras_url
    click_on "Edit", match: :first

    fill_in "Preferred term", with: @meddra.preferred_term
    fill_in "Preferred term code", with: @meddra.preferred_term_code
    click_on "Update Meddra"

    assert_text "Meddra was successfully updated"
    click_on "Back"
  end

  test "destroying a Meddra" do
    visit meddras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meddra was successfully destroyed"
  end
end
