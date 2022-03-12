class ChangeRecipeTimeCol < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :preparation_time_hours, :integer
    add_column :recipes, :preparation_time_minutes, :integer
    add_column :recipes, :cooking_time_hours, :integer
    add_column :recipes, :cooking_time_minutes, :integer
  end
end
