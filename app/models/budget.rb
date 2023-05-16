class Budget < ApplicationRecord
	include ActionView::Helpers::DateHelper
	include ActionView::Helpers::NumberHelper

  belongs_to :category
  belongs_to :status

  validates_presence_of :title, :amount, :category_id, :description, :start_date, :end_date, :status_id

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
end
