require "application_system_test_case"

class IsOpensTest < ApplicationSystemTestCase
  setup do
    @is_open = is_opens(:one)
  end

  test "visiting the index" do
    visit is_opens_url
    assert_selector "h1", text: "Is Opens"
  end

  test "creating a Is open" do
    visit is_opens_url
    click_on "New Is Open"

    fill_in "Age", with: @is_open.age
    fill_in "Comment", with: @is_open.comment
    fill_in "Join project", with: @is_open.join_project
    fill_in "Join team", with: @is_open.join_team
    fill_in "User", with: @is_open.user_id
    click_on "Create Is open"

    assert_text "Is open was successfully created"
    click_on "Back"
  end

  test "updating a Is open" do
    visit is_opens_url
    click_on "Edit", match: :first

    fill_in "Age", with: @is_open.age
    fill_in "Comment", with: @is_open.comment
    fill_in "Join project", with: @is_open.join_project
    fill_in "Join team", with: @is_open.join_team
    fill_in "User", with: @is_open.user_id
    click_on "Update Is open"

    assert_text "Is open was successfully updated"
    click_on "Back"
  end

  test "destroying a Is open" do
    visit is_opens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Is open was successfully destroyed"
  end
end
