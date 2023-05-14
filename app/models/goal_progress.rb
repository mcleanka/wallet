class GoalProgress < ApplicationRecord
  belongs_to :goals
  belongs_to :statuses
end
