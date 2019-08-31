require 'test_helper'

class TeamProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_project = team_projects(:one)
  end

  test "should get index" do
    get team_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_team_project_url
    assert_response :success
  end

  test "should create team_project" do
    assert_difference('TeamProject.count') do
      post team_projects_url, params: { team_project: { comment: @team_project.comment, icon: @team_project.icon, is_public: @team_project.is_public, project_id: @team_project.project_id, team_id: @team_project.team_id } }
    end

    assert_redirected_to team_project_url(TeamProject.last)
  end

  test "should show team_project" do
    get team_project_url(@team_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_project_url(@team_project)
    assert_response :success
  end

  test "should update team_project" do
    patch team_project_url(@team_project), params: { team_project: { comment: @team_project.comment, icon: @team_project.icon, is_public: @team_project.is_public, project_id: @team_project.project_id, team_id: @team_project.team_id } }
    assert_redirected_to team_project_url(@team_project)
  end

  test "should destroy team_project" do
    assert_difference('TeamProject.count', -1) do
      delete team_project_url(@team_project)
    end

    assert_redirected_to team_projects_url
  end
end
