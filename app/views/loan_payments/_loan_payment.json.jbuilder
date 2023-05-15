json.extract! loan_payment, :id, :loan_id, :payment_date, :amount, :created_at, :updated_at
json.url loan_payment_url(loan_payment, format: :json)
