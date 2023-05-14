class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.string :title
      t.decimal :amount
      t.references :categories, null: false, foreign_key: true
      t.text :description
      t.date :start_date
      t.date :end_date
      t.references :statuses, null: false, foreign_key: true

      t.timestamps
    end
  end
end
