json.extract! budget, :id, :title, :amount, :categories_id_id, :description, :start_date, :end_date, :statuses_id_id, :created_at, :updated_at
json.url budget_url(budget, format: :json)
