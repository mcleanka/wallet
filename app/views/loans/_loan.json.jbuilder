json.extract! loan, :id, :lender, :amount, :interest_rate, :start_date, :end_date, :created_at, :updated_at
json.url loan_url(loan, format: :json)
