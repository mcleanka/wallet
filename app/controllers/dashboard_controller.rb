class DashboardController < ApplicationController
	include ActionView::Helpers::NumberHelper

  def index
    loan_amount_sum = Loan.joins(:status)
                      .where(statuses: { name: 'active' })
                      .sum(:amount)

    interest_sum = Loan.pluck(:interest_rate).sum
    @total_loan = (loan_amount_sum + interest_sum)
    @total_loan_payments = LoanPayment.sum(:amount)

    @total_income = Income.sum(:amount)
    @total_expense = Expense.sum(:amount)
    
    @total_budget = Budget.joins(:status)
                      .where(statuses: { name: 'pending' })
                      .total_amount_within_month_duration

    total_deductions_amount = @total_loan_payments + @total_expense

    @total_income = @total_income - total_deductions_amount

    @formatted_total_loan = number_to_currency(@total_loan, unit: "MK", separator: ".", delimiter: ",")
    @formatted_total_income = number_to_currency(@total_income, unit: "MK", separator: ".", delimiter: ",")
    @formatted_total_expense = number_to_currency(@total_expense, unit: "MK", separator: ".", delimiter: ",")
    @formatted_total_budget = number_to_currency(@total_budget, unit: "MK", separator: ".", delimiter: ",")

    @goals = Goal.all
    
  end
end
