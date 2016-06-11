class CreateRecipeItems < ActiveRecord::Migration
  def change
    create_table :recipe_items do |t|
      t.string :name
      t.float :quantity
      t.string :unit
      t.string :note
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps

    end
  end
end
