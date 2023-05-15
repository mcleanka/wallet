class Loan < ApplicationRecord
	include ActionView::Helpers::DateHelper
	include ActionView::Helpers::NumberHelper

	has_many :loan_payment
	belongs_to :status
	
	validates_presence_of :lender, :amount, :interest_rate, :start_date, :end_date, :status_id

	def formatted_start_date
    	start_date.strftime("%d %b, %Y")
	end

	def formatted_end_date
    	end_date.strftime("%d %b, %Y")
	end

	def duration
		distance_of_time_in_words(start_date, end_date, include_seconds: true)
	end

	def formatted_amount
		number_to_currency(amount, unit: "MK", separator: ".", delimiter: ",")
	end

	def formatted_interest_rate
		number_to_currency(interest_rate, unit: "MK", separator: ".", delimiter: ",")
	end
end
