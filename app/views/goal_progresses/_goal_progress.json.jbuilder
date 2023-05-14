json.extract! goal_progress, :id, :goals_id, :amount_saved, :completion_percentage, :statuses_id, :date, :created_at, :updated_at
json.url goal_progress_url(goal_progress, format: :json)
