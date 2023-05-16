class RenameColumnsInBudgets < ActiveRecord::Migration[7.0]
  def change
    rename_column :budgets, :categories_id, :category_id
    rename_column :budgets, :statuses_id, :status_id
  end
end
