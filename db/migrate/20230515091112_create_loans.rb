class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.string :lender
      t.decimal :amount
      t.decimal :interest_rate
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
