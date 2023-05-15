class Status < ApplicationRecord
	has_many :income
	has_many :loan
	has_many :goal
	has_many :budget
end
