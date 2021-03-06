class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new
    @ingredient.name = params[:name]
    @ingredient.consistency = params[:consistency]

    if @ingredient.save
      redirect_to "/ingredients", :notice => "Ingredient created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    @ingredient.name = params[:name]
    @ingredient.consistency = params[:consistency]

    if @ingredient.save
      redirect_to "/ingredients", :notice => "Ingredient updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])

    @ingredient.destroy

    redirect_to "/ingredients", :notice => "Ingredient deleted."
  end
end
