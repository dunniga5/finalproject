class RecipeItem < ActiveRecord::Base
  validates :quantity, :unit,  presence: true

  belongs_to :ingredient, :class_name => "Ingredient", :foreign_key => "ingredient_id"
  belongs_to :recipe, :class_name => "Recipe", :foreign_key => "recipe_id"
end
