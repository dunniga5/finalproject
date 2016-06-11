class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :ingredients, :attribute, :consistency
  end
end
