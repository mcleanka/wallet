class Category < ApplicationRecord
	has_many :budgets
	has_many :goals
end
