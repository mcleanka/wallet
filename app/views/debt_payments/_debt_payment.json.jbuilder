json.extract! debt_payment, :id, :debt_id, :payment_date, :amount, :notes, :repaid, :repayment_date, :created_at, :updated_at
json.url debt_payment_url(debt_payment, format: :json)
