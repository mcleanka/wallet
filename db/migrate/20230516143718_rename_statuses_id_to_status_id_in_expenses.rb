class RenameStatusesIdToStatusIdInExpenses < ActiveRecord::Migration[7.0]
  def change
    rename_column :expenses, :statuses_id, :status_id
  end
end
