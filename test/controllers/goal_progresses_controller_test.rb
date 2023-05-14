require "test_helper"

class GoalProgressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_progress = goal_progresses(:one)
  end

  test "should get index" do
    get goal_progresses_url
    assert_response :success
  end

  test "should get new" do
    get new_goal_progress_url
    assert_response :success
  end

  test "should create goal_progress" do
    assert_difference("GoalProgress.count") do
      post goal_progresses_url, params: { goal_progress: { amount_saved: @goal_progress.amount_saved, completion_percentage: @goal_progress.completion_percentage, date: @goal_progress.date, goals_id: @goal_progress.goals_id, statuses_id: @goal_progress.statuses_id } }
    end

    assert_redirected_to goal_progress_url(GoalProgress.last)
  end

  test "should show goal_progress" do
    get goal_progress_url(@goal_progress)
    assert_response :success
  end

  test "should get edit" do
    get edit_goal_progress_url(@goal_progress)
    assert_response :success
  end

  test "should update goal_progress" do
    patch goal_progress_url(@goal_progress), params: { goal_progress: { amount_saved: @goal_progress.amount_saved, completion_percentage: @goal_progress.completion_percentage, date: @goal_progress.date, goals_id: @goal_progress.goals_id, statuses_id: @goal_progress.statuses_id } }
    assert_redirected_to goal_progress_url(@goal_progress)
  end

  test "should destroy goal_progress" do
    assert_difference("GoalProgress.count", -1) do
      delete goal_progress_url(@goal_progress)
    end

    assert_redirected_to goal_progresses_url
  end
end
