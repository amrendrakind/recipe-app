class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new 
    @recipe = Recipe.new
  end

  def create
    recipe  = Recipe.new(recipe_params)
    recipe.user_id = params[:user_id]

    if recipe.save
      redirect_to user_recipes_path(params[:user_id])
    else
      redirect_to new_user_recipe_path
    end
    
    def destroy
    end

    def recipe_params
      params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
    end
  end
end
