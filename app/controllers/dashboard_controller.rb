class DashboardController < ApplicationController
	include ActionView::Helpers::NumberHelper

  def index
    loan_amount_sum = Loan.sum(:amount)
    interest_sum = Loan.pluck(:interest_rate).sum
    @total_loan = (loan_amount_sum + interest_sum)

    @total_income = Income.sum(:amount)
    @total_expense = Expense.sum(:amount)
    @total_budget = Budget.total_amount_within_month_duration

    @formatted_total_loan = number_to_currency(@total_loan, unit: "MK", separator: ".", delimiter: ",")
    @formatted_total_income = number_to_currency(@total_income, unit: "MK", separator: ".", delimiter: ",")
    @formatted_total_expense = number_to_currency(@total_expense, unit: "MK", separator: ".", delimiter: ",")
    @formatted_total_budget = number_to_currency(@total_budget, unit: "MK", separator: ".", delimiter: ",")

    @goals = Goal.all
    
  end
end
