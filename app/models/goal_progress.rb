class GoalProgress < ApplicationRecord
  include ActionView::Helpers::DateHelper
	include ActionView::Helpers::NumberHelper

  belongs_to :goal
  belongs_to :status

  has_one :goal

  validates_presence_of :goal_id, :amount_saved, :completion_percentage, :status_id, :date

  def formatted_date
    date.strftime("%d %b, %Y")
  end

  def formatted_saved_amount
    number_to_currency(amount, unit: "MK", separator: ".", delimiter: ",")
  end
end
