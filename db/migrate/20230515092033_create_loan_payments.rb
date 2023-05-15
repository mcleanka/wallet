class CreateLoanPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :loan_payments do |t|
      t.references :loan, null: false, foreign_key: true
      t.date :payment_date
      t.decimal :amount

      t.timestamps
    end
  end
end
