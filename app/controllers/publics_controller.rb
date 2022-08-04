class PublicsController < ApplicationController
  def index
    @publics = Recipe.includes(:user).where(public: true).order(created_at: :desc)
  end
end
