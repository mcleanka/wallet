require "application_system_test_case"

class LoansTest < ApplicationSystemTestCase
  setup do
    @loan = loans(:one)
  end

  test "visiting the index" do
    visit loans_url
    assert_selector "h1", text: "Loans"
  end

  test "should create loan" do
    visit loans_url
    click_on "New loan"

    fill_in "Amount", with: @loan.amount
    fill_in "End date", with: @loan.end_date
    fill_in "Interest rate", with: @loan.interest_rate
    fill_in "Lender", with: @loan.lender
    fill_in "Start date", with: @loan.start_date
    click_on "Create Loan"

    assert_text "Loan was successfully created"
    click_on "Back"
  end

  test "should update Loan" do
    visit loan_url(@loan)
    click_on "Edit this loan", match: :first

    fill_in "Amount", with: @loan.amount
    fill_in "End date", with: @loan.end_date
    fill_in "Interest rate", with: @loan.interest_rate
    fill_in "Lender", with: @loan.lender
    fill_in "Start date", with: @loan.start_date
    click_on "Update Loan"

    assert_text "Loan was successfully updated"
    click_on "Back"
  end

  test "should destroy Loan" do
    visit loan_url(@loan)
    click_on "Destroy this loan", match: :first

    assert_text "Loan was successfully destroyed"
  end
end
