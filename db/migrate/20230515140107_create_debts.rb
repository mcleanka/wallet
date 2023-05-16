class CreateDebts < ActiveRecord::Migration[7.0]
  def change
    create_table :debts do |t|
      t.string :debtor_name
      t.decimal :amount
      t.date :due_date
      t.decimal :interest_rate
      t.text :notes

      t.timestamps
    end
  end
end
