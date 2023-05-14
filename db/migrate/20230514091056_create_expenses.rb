class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :title
      t.references :statuses, null: false, foreign_key: true
      t.decimal :amount
      t.references :budgets, null: false, foreign_key: true
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
