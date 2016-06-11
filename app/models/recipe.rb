class Recipe < ActiveRecord::Base
    validates :name, presence: true

    belongs_to :user
    has_many :recipe_items, :class_name => "RecipeItem", :foreign_key => "recipe_id", :dependent => :destroy
end
