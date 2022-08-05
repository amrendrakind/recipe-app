class ShoppingsController < ApplicationController
  def index
    # puts params
    @recipe_food = RecipeFood.includes(:food).where(recipe_id: params[:recipe_id])
  end
end
