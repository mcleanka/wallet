class Status < ApplicationRecord
	has_many :incomes
	has_many :goals
	has_many :budgets
end
