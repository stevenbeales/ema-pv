require "application_system_test_case"

class PostMarketingsTest < ApplicationSystemTestCase
  setup do
    @post_marketing = post_marketings(:one)
  end

  test "visiting the index" do
    visit post_marketings_url
    assert_selector "h1", text: "Post Marketings"
  end

  test "creating a Post marketing" do
    visit post_marketings_url
    click_on "New Post Marketing"

    fill_in "Code", with: @post_marketing.code
    click_on "Create Post marketing"

    assert_text "Post marketing was successfully created"
    click_on "Back"
  end

  test "updating a Post marketing" do
    visit post_marketings_url
    click_on "Edit", match: :first

    fill_in "Code", with: @post_marketing.code
    click_on "Update Post marketing"

    assert_text "Post marketing was successfully updated"
    click_on "Back"
  end

  test "destroying a Post marketing" do
    visit post_marketings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post marketing was successfully destroyed"
  end
end
