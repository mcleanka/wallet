class ChangeColumnsInIncomes < ActiveRecord::Migration[7.0]
  def change
    change_column :incomes, :title, :string, null: false
    change_column :incomes, :amount, :integer, null: false
    change_column :incomes, :funder_name, :string, null: false
  end
end
