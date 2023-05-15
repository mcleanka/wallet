class Loan < ApplicationRecord
	has_many :loan_payment
	
	validates_presence_of :lender, :amount, :interest_rate, :start_date, :end_date
end
