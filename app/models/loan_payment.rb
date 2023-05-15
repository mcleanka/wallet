class LoanPayment < ApplicationRecord
	include ActionView::Helpers::NumberHelper

  belongs_to :loan

  validates_presence_of :loan_id, :payment_date, :amount

  def formatted_payment_date
    	payment_date.strftime("%d %b, %Y")
	end

	def formatted_amount
		number_to_currency(amount, unit: "MK", separator: ".", delimiter: ",")
	end
end
