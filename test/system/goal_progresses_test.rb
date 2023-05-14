require "application_system_test_case"

class GoalProgressesTest < ApplicationSystemTestCase
  setup do
    @goal_progress = goal_progresses(:one)
  end

  test "visiting the index" do
    visit goal_progresses_url
    assert_selector "h1", text: "Goal progresses"
  end

  test "should create goal progress" do
    visit goal_progresses_url
    click_on "New goal progress"

    fill_in "Amount saved", with: @goal_progress.amount_saved
    fill_in "Completion percentage", with: @goal_progress.completion_percentage
    fill_in "Date", with: @goal_progress.date
    fill_in "Goals", with: @goal_progress.goals_id
    fill_in "Statuses", with: @goal_progress.statuses_id
    click_on "Create Goal progress"

    assert_text "Goal progress was successfully created"
    click_on "Back"
  end

  test "should update Goal progress" do
    visit goal_progress_url(@goal_progress)
    click_on "Edit this goal progress", match: :first

    fill_in "Amount saved", with: @goal_progress.amount_saved
    fill_in "Completion percentage", with: @goal_progress.completion_percentage
    fill_in "Date", with: @goal_progress.date
    fill_in "Goals", with: @goal_progress.goals_id
    fill_in "Statuses", with: @goal_progress.statuses_id
    click_on "Update Goal progress"

    assert_text "Goal progress was successfully updated"
    click_on "Back"
  end

  test "should destroy Goal progress" do
    visit goal_progress_url(@goal_progress)
    click_on "Destroy this goal progress", match: :first

    assert_text "Goal progress was successfully destroyed"
  end
end
