class Income < ApplicationRecord
  belongs_to :income_source, foreign_key: :income_sources_id
  belongs_to :status, foreign_key: :statuses_id

  validates :title, :amount, :funder_name, :date, presence: true
  validates :income_sources_id, :statuses_id, presence: true
end
