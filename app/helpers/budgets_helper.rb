module BudgetsHelper
	def formatted_budgets_total
		number_to_currency(Budget.total_budgets, unit: "MK", separator: ".", delimiter: ",")
	end

  	def formatted_budgets_total_expenses
		t = Budget.budgets_total_expenses.sum(&:second)
		number_to_currency(t,  unit: "MK", separator: ".", delimiter: ",")
	end

	def formatted_budgets_total_variance
		number_to_currency(Budget.budgets_total_variance, unit: "MK", separator: ".", delimiter: ",")
	end
end