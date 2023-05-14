class CreateIncomeSources < ActiveRecord::Migration[7.0]
  def change
    create_table :income_sources do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
