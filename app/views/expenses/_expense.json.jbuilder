json.extract! expense, :id, :title, :statuses_id, :amount, :budgets_id, :description, :date, :created_at, :updated_at
json.url expense_url(expense, format: :json)
