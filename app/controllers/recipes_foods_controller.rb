class RecipesFoodsController < ApplicationController
  def new
    @foods = Food.all
    @recipe_food = RecipeFood.new
  end

  def destroy
    @recipe_food = RecipeFood.find(params[:id]).destroy
    redirect_to user_recipe_path(params[:user_id], params[:recipe_id])
  end

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end
