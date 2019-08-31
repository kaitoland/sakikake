require "application_system_test_case"

class TeamProjectsTest < ApplicationSystemTestCase
  setup do
    @team_project = team_projects(:one)
  end

  test "visiting the index" do
    visit team_projects_url
    assert_selector "h1", text: "Team Projects"
  end

  test "creating a Team project" do
    visit team_projects_url
    click_on "New Team Project"

    fill_in "Comment", with: @team_project.comment
    fill_in "Icon", with: @team_project.icon
    fill_in "Is public", with: @team_project.is_public
    fill_in "Project", with: @team_project.project_id
    fill_in "Team", with: @team_project.team_id
    click_on "Create Team project"

    assert_text "Team project was successfully created"
    click_on "Back"
  end

  test "updating a Team project" do
    visit team_projects_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @team_project.comment
    fill_in "Icon", with: @team_project.icon
    fill_in "Is public", with: @team_project.is_public
    fill_in "Project", with: @team_project.project_id
    fill_in "Team", with: @team_project.team_id
    click_on "Update Team project"

    assert_text "Team project was successfully updated"
    click_on "Back"
  end

  test "destroying a Team project" do
    visit team_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team project was successfully destroyed"
  end
end
