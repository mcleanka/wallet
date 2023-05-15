class ChangeDateInIncomes < ActiveRecord::Migration[7.0]
  def change
    change_column :incomes, :date, :date, null: false
  end
end
