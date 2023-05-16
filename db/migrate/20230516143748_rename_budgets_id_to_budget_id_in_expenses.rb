class RenameBudgetsIdToBudgetIdInExpenses < ActiveRecord::Migration[7.0]
  def change
    rename_column :expenses, :budgets_id, :budget_id
  end
end
