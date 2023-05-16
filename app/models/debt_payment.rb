class DebtPayment < ApplicationRecord
  include ActionView::Helpers::NumberHelper
  
  belongs_to :debt

  validates_presence_of :debt_id, :amount, :repayment_date

  def formatted_repayment_date
    repayment_date.strftime("%d %b, %Y")
  end

  def formatted_amount
    number_to_currency(amount, unit: "MK", separator: ".", delimiter: ",")
  end
  
end
