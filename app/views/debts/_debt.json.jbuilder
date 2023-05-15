json.extract! debt, :id, :debtor_name, :amount, :due_date, :interest_rate, :notes, :created_at, :updated_at
json.url debt_url(debt, format: :json)
