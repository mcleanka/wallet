class Budget < ApplicationRecord
  belongs_to :categories_id
  belongs_to :statuses_id
end
