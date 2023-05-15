class AddStatusAfterEndDateToLoans < ActiveRecord::Migration[7.0]
  def change
    add_reference :loans, :status, null: false, foreign_key: true
  end
end
