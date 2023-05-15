class CreateDebtPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :debt_payments do |t|
      t.references :debt, null: false, foreign_key: true
      t.date :payment_date
      t.decimal :amount
      t.text :notes
      t.boolean :repaid
      t.date :repayment_date

      t.timestamps
    end
  end
end
