require 'test_helper'

class IsOpensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @is_open = is_opens(:one)
  end

  test "should get index" do
    get is_opens_url
    assert_response :success
  end

  test "should get new" do
    get new_is_open_url
    assert_response :success
  end

  test "should create is_open" do
    assert_difference('IsOpen.count') do
      post is_opens_url, params: { is_open: { age: @is_open.age, comment: @is_open.comment, join_project: @is_open.join_project, join_team: @is_open.join_team, user_id: @is_open.user_id } }
    end

    assert_redirected_to is_open_url(IsOpen.last)
  end

  test "should show is_open" do
    get is_open_url(@is_open)
    assert_response :success
  end

  test "should get edit" do
    get edit_is_open_url(@is_open)
    assert_response :success
  end

  test "should update is_open" do
    patch is_open_url(@is_open), params: { is_open: { age: @is_open.age, comment: @is_open.comment, join_project: @is_open.join_project, join_team: @is_open.join_team, user_id: @is_open.user_id } }
    assert_redirected_to is_open_url(@is_open)
  end

  test "should destroy is_open" do
    assert_difference('IsOpen.count', -1) do
      delete is_open_url(@is_open)
    end

    assert_redirected_to is_opens_url
  end
end
