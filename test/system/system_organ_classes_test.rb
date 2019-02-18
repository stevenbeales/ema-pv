require "application_system_test_case"

class SystemOrganClassesTest < ApplicationSystemTestCase
  setup do
    @system_organ_class = system_organ_classes(:one)
  end

  test "visiting the index" do
    visit system_organ_classes_url
    assert_selector "h1", text: "System Organ Classes"
  end

  test "creating a System organ class" do
    visit system_organ_classes_url
    click_on "New System Organ Class"

    fill_in "Soc code", with: @system_organ_class.soc_code
    click_on "Create System organ class"

    assert_text "System organ class was successfully created"
    click_on "Back"
  end

  test "updating a System organ class" do
    visit system_organ_classes_url
    click_on "Edit", match: :first

    fill_in "Soc code", with: @system_organ_class.soc_code
    click_on "Update System organ class"

    assert_text "System organ class was successfully updated"
    click_on "Back"
  end

  test "destroying a System organ class" do
    visit system_organ_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "System organ class was successfully destroyed"
  end
end
