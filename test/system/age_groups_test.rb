require "application_system_test_case"

class AgeGroupsTest < ApplicationSystemTestCase
  setup do
    @age_group = age_groups(:one)
  end

  test "visiting the index" do
    visit age_groups_url
    assert_selector "h1", text: "Age Groups"
  end

  test "creating a Age group" do
    visit age_groups_url
    click_on "New Age Group"

    fill_in "Code", with: @age_group.code
    click_on "Create Age group"

    assert_text "Age group was successfully created"
    click_on "Back"
  end

  test "updating a Age group" do
    visit age_groups_url
    click_on "Edit", match: :first

    fill_in "Code", with: @age_group.code
    click_on "Update Age group"

    assert_text "Age group was successfully updated"
    click_on "Back"
  end

  test "destroying a Age group" do
    visit age_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Age group was successfully destroyed"
  end
end
