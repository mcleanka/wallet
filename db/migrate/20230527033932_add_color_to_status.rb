class AddColorToStatus < ActiveRecord::Migration[7.0]
  def change
    add_column :statuses, :color, :string, default: "primary"
  end
end
