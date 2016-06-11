class Ingredient < ActiveRecord::Base
  validates :name, presence: true

  has_many :recipe_items, :class_name => "RecipeItem", :foreign_key => "ingredient_id", :dependent => :destroy
end
