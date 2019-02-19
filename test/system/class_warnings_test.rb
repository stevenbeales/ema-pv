require "application_system_test_case"

class ClassWarningsTest < ApplicationSystemTestCase
  setup do
    @class_warning = class_warnings(:one)
  end

  test "visiting the index" do
    visit class_warnings_url
    assert_selector "h1", text: "Class Warnings"
  end

  test "creating a Class warning" do
    visit class_warnings_url
    click_on "New Class Warning"

    fill_in "Code", with: @class_warning.code
    click_on "Create Class warning"

    assert_text "Class warning was successfully created"
    click_on "Back"
  end

  test "updating a Class warning" do
    visit class_warnings_url
    click_on "Edit", match: :first

    fill_in "Code", with: @class_warning.code
    click_on "Update Class warning"

    assert_text "Class warning was successfully updated"
    click_on "Back"
  end

  test "destroying a Class warning" do
    visit class_warnings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class warning was successfully destroyed"
  end
end
