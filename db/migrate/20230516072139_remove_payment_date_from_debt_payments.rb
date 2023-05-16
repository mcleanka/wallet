class RemovePaymentDateFromDebtPayments < ActiveRecord::Migration[7.0]
  def change
    remove_column :debt_payments, :payment_date, :date
  end
end
