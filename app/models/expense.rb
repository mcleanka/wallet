class Expense < ApplicationRecord
  belongs_to :status
  belongs_to :budget

  validates_presence_of :title, :status_id, :amount, :budget_id, :date
end
