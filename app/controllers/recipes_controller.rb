class RecipesController < ApplicationController
  def index
    @receipts = Receipt.all
  end

  def show
    @receipt = Receipt.find(params[:id])
  end
end
