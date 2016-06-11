class RecipeItemsController < ApplicationController
  def index
    @recipe_items = RecipeItem.all
  end

  def show
    @recipe_item = RecipeItem.find(params[:id])
  end

  def new
    @recipe_item = RecipeItem.new
  end

  def create
    @recipe_item = RecipeItem.new
    @recipe_item.quantity = params[:quantity]
    @recipe_item.unit = params[:unit]
    @recipe_item.note = params[:note]
    @recipe_item.ingredient_id = params[:ingredient_id]
    @recipe_item.recipe_id = params[:recipe_id]

    if @recipe_item.save
      redirect_to :back, :notice => "Recipe item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @recipe_item = RecipeItem.find(params[:id])
  end

  def update
    @recipe_item = RecipeItem.find(params[:id])

    @recipe_item.quantity = params[:quantity]
    @recipe_item.unit = params[:unit]
    @recipe_item.note = params[:note]
    @recipe_item.ingredient_id = params[:ingredient_id]
    @recipe_item.recipe_id = params[:recipe_id]

    if @recipe_item.save
      redirect_to "/recipe_items", :notice => "Recipe item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @recipe_item = RecipeItem.find(params[:id])

    @recipe_item.destroy

    redirect_to "/recipe_items", :notice => "Recipe item deleted."
  end
end
