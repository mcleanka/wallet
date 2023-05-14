class Goal < ApplicationRecord
  belongs_to :categories
  belongs_to :statuses
end
