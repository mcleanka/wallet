class CreateGoalProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :goal_progresses do |t|
      t.references :goals, null: false, foreign_key: true
      t.decimal :amount_saved
      t.decimal :completion_percentage
      t.references :statuses, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
