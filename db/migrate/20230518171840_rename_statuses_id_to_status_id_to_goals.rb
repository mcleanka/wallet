class RenameStatusesIdToStatusIdToGoals < ActiveRecord::Migration[7.0]
  def change
    rename_column :goals, :statuses_id, :status_id
  end
end
