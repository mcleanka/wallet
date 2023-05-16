class Debt < ApplicationRecord
	include ActionView::Helpers::NumberHelper

	has_many :debt_payment
	belongs_to :status

	validates_presence_of :debtor_name, :amount, :due_date, :interest_rate, :status_id

	def formatted_due_date
    	due_date.strftime("%d %b, %Y")
	end

	def formatted_amount
		number_to_currency(amount, unit: "MK", separator: ".", delimiter: ",")
	end

	def formatted_interest_rate
		number_to_currency(interest_rate, unit: "MK", separator: ".", delimiter: ",")
	end
end
