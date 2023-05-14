class Expense < ApplicationRecord
  belongs_to :statuses
  belongs_to :budgets
end
