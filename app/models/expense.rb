class Expense < ApplicationRecord
	include ActionView::Helpers::NumberHelper

	belongs_to :status
	belongs_to :budget

	validates_presence_of :title, :status_id, :amount, :budget_id, :date

	def formatted_date
		date.strftime("%d %b, %Y")
	end

	def formatted_amount
		number_to_currency(amount, unit: "MK", separator: ".", delimiter: ",")
	end 
end
