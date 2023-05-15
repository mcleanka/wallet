class Status < ApplicationRecord
	has_many :income
	has_many :goals
	has_many :budgets
end
