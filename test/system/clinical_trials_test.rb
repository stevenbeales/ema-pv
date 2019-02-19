require "application_system_test_case"

class ClinicalTrialsTest < ApplicationSystemTestCase
  setup do
    @clinical_trial = clinical_trials(:one)
  end

  test "visiting the index" do
    visit clinical_trials_url
    assert_selector "h1", text: "Clinical Trials"
  end

  test "creating a Clinical trial" do
    visit clinical_trials_url
    click_on "New Clinical Trial"

    fill_in "Code", with: @clinical_trial.code
    click_on "Create Clinical trial"

    assert_text "Clinical trial was successfully created"
    click_on "Back"
  end

  test "updating a Clinical trial" do
    visit clinical_trials_url
    click_on "Edit", match: :first

    fill_in "Code", with: @clinical_trial.code
    click_on "Update Clinical trial"

    assert_text "Clinical trial was successfully updated"
    click_on "Back"
  end

  test "destroying a Clinical trial" do
    visit clinical_trials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clinical trial was successfully destroyed"
  end
end
