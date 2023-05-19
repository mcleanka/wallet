class Goal < ApplicationRecord
	include ActionView::Helpers::NumberHelper
	include ActionView::Helpers::DateHelper

  belongs_to :category
  belongs_to :status

  has_many :goal_progress

  validates_presence_of :title, :amount, :category_id, :start_date, :end_date, :status_id

  def formatted_amount
    number_to_currency(amount, unit: "MK", separator: ".", delimiter: ",")
  end

  def formatted_start_date
    start_date.strftime("%d %b, %Y")
  end

  def formatted_end_date
    end_date.strftime("%d %b, %Y")
  end

  def duration
		distance_of_time_in_words(start_date, end_date, include_seconds: true)
	end
end
