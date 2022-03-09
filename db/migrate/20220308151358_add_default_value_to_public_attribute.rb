class AddDefaultValueToPublicAttribute < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :public, :boolean, default: true
  end
end
