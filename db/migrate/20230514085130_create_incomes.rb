class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.string :title
      t.integer :amount
      t.string :funder_name
      t.references :income_sources, null: false, foreign_key: true
      t.references :statuses, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
