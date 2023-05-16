class Expense < ApplicationRecord
  belongs_to :status
  has_many :budget

  validates_presence_of :title, :status_id, :amount, :budget_id, :date

  def formatted_date
    	date.strftime("%d %b, %Y")
	end

	def formatted_amount
		number_to_currency(amount, unit: "MK", separator: ".", delimiter: ",")
	end 
end
