class PublicsController < ApplicationController
  def index
    @publics = Recipe.includes(:user, :recipe_foods).where(public: true).order(created_at: :desc)
  end
end
