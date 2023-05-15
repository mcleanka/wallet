require "application_system_test_case"

class LoanPaymentsTest < ApplicationSystemTestCase
  setup do
    @loan_payment = loan_payments(:one)
  end

  test "visiting the index" do
    visit loan_payments_url
    assert_selector "h1", text: "Loan payments"
  end

  test "should create loan payment" do
    visit loan_payments_url
    click_on "New loan payment"

    fill_in "Amount", with: @loan_payment.amount
    fill_in "Loan", with: @loan_payment.loan_id
    fill_in "Payment date", with: @loan_payment.payment_date
    click_on "Create Loan payment"

    assert_text "Loan payment was successfully created"
    click_on "Back"
  end

  test "should update Loan payment" do
    visit loan_payment_url(@loan_payment)
    click_on "Edit this loan payment", match: :first

    fill_in "Amount", with: @loan_payment.amount
    fill_in "Loan", with: @loan_payment.loan_id
    fill_in "Payment date", with: @loan_payment.payment_date
    click_on "Update Loan payment"

    assert_text "Loan payment was successfully updated"
    click_on "Back"
  end

  test "should destroy Loan payment" do
    visit loan_payment_url(@loan_payment)
    click_on "Destroy this loan payment", match: :first

    assert_text "Loan payment was successfully destroyed"
  end
end
