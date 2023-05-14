class Income < ApplicationRecord
  belongs_to :income_sources
  belongs_to :statuses
end
