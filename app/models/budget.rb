class Budget < ApplicationRecord
	include ActionView::Helpers::DateHelper
	include ActionView::Helpers::NumberHelper

	belongs_to :category
	belongs_to :status

	has_many :expense, :dependent => :destroy

	validates_presence_of :title, :amount, :category_id, :start_date, :end_date, :status_id

	scope :duration_less_than_or_equal_to_month, -> {
		next_month_start = Date.current.next_month.beginning_of_month
		next_month_end = next_month_start.end_of_month
		where("DATEDIFF(end_date, start_date) <= ?", next_month_end.day + 1)
	}

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

	def self.total_amount_within_month_duration
		duration_less_than_or_equal_to_month.sum(:amount)
	end
end
