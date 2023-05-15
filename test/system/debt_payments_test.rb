require "application_system_test_case"

class DebtPaymentsTest < ApplicationSystemTestCase
  setup do
    @debt_payment = debt_payments(:one)
  end

  test "visiting the index" do
    visit debt_payments_url
    assert_selector "h1", text: "Debt payments"
  end

  test "should create debt payment" do
    visit debt_payments_url
    click_on "New debt payment"

    fill_in "Amount", with: @debt_payment.amount
    fill_in "Debt", with: @debt_payment.debt_id
    fill_in "Notes", with: @debt_payment.notes
    fill_in "Payment date", with: @debt_payment.payment_date
    check "Repaid" if @debt_payment.repaid
    fill_in "Repayment date", with: @debt_payment.repayment_date
    click_on "Create Debt payment"

    assert_text "Debt payment was successfully created"
    click_on "Back"
  end

  test "should update Debt payment" do
    visit debt_payment_url(@debt_payment)
    click_on "Edit this debt payment", match: :first

    fill_in "Amount", with: @debt_payment.amount
    fill_in "Debt", with: @debt_payment.debt_id
    fill_in "Notes", with: @debt_payment.notes
    fill_in "Payment date", with: @debt_payment.payment_date
    check "Repaid" if @debt_payment.repaid
    fill_in "Repayment date", with: @debt_payment.repayment_date
    click_on "Update Debt payment"

    assert_text "Debt payment was successfully updated"
    click_on "Back"
  end

  test "should destroy Debt payment" do
    visit debt_payment_url(@debt_payment)
    click_on "Destroy this debt payment", match: :first

    assert_text "Debt payment was successfully destroyed"
  end
end
