class AddStatusAfterNoteToDebts < ActiveRecord::Migration[7.0]
  def change
    add_reference :debts, :status, null: false, foreign_key: true
  end
end
