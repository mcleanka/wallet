require "application_system_test_case"

class BudgetsTest < ApplicationSystemTestCase
  setup do
    @budget = budgets(:one)
  end

  test "visiting the index" do
    visit budgets_url
    assert_selector "h1", text: "Budgets"
  end

  test "should create budget" do
    visit budgets_url
    click_on "New budget"

    fill_in "Amount", with: @budget.amount
    fill_in "Categories id", with: @budget.categories_id_id
    fill_in "Description", with: @budget.description
    fill_in "End date", with: @budget.end_date
    fill_in "Start date", with: @budget.start_date
    fill_in "Statuses id", with: @budget.statuses_id_id
    fill_in "Title", with: @budget.title
    click_on "Create Budget"

    assert_text "Budget was successfully created"
    click_on "Back"
  end

  test "should update Budget" do
    visit budget_url(@budget)
    click_on "Edit this budget", match: :first

    fill_in "Amount", with: @budget.amount
    fill_in "Categories id", with: @budget.categories_id_id
    fill_in "Description", with: @budget.description
    fill_in "End date", with: @budget.end_date
    fill_in "Start date", with: @budget.start_date
    fill_in "Statuses id", with: @budget.statuses_id_id
    fill_in "Title", with: @budget.title
    click_on "Update Budget"

    assert_text "Budget was successfully updated"
    click_on "Back"
  end

  test "should destroy Budget" do
    visit budget_url(@budget)
    click_on "Destroy this budget", match: :first

    assert_text "Budget was successfully destroyed"
  end
end
