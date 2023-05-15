require "test_helper"

class DebtPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debt_payment = debt_payments(:one)
  end

  test "should get index" do
    get debt_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_debt_payment_url
    assert_response :success
  end

  test "should create debt_payment" do
    assert_difference("DebtPayment.count") do
      post debt_payments_url, params: { debt_payment: { amount: @debt_payment.amount, debt_id: @debt_payment.debt_id, notes: @debt_payment.notes, payment_date: @debt_payment.payment_date, repaid: @debt_payment.repaid, repayment_date: @debt_payment.repayment_date } }
    end

    assert_redirected_to debt_payment_url(DebtPayment.last)
  end

  test "should show debt_payment" do
    get debt_payment_url(@debt_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_debt_payment_url(@debt_payment)
    assert_response :success
  end

  test "should update debt_payment" do
    patch debt_payment_url(@debt_payment), params: { debt_payment: { amount: @debt_payment.amount, debt_id: @debt_payment.debt_id, notes: @debt_payment.notes, payment_date: @debt_payment.payment_date, repaid: @debt_payment.repaid, repayment_date: @debt_payment.repayment_date } }
    assert_redirected_to debt_payment_url(@debt_payment)
  end

  test "should destroy debt_payment" do
    assert_difference("DebtPayment.count", -1) do
      delete debt_payment_url(@debt_payment)
    end

    assert_redirected_to debt_payments_url
  end
end
