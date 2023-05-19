class RenameCategoriesIdToCategoryIdInGoals < ActiveRecord::Migration[7.0]
  def change
     rename_column :goals, :categories_id, :category_id
  end
end
