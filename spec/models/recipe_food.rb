require 'rails_helper'

RSpec.describe Food, type: :model do
  before :each do
    amar = User.create(name: 'amar', email: 'amar@gmail.com', password: '123456')
    amar.save
    @recipe = Recipe.create(name: 'Recipe1', preparation_time: 10.5, cooking_time: 20.5, description: 'Description1', public: true, user: amar)
    @recipe.save
    @food = Food.create(name: 'Food1', measurement_unit: 'g', price: 10.5, quantity: 10, user: amar)
    @food.save
    @recipe_food = RecipeFood.create(quantity: 10, food: @food, recipe: @recipe)

  end
  context 'Recipe Food validations' do

    it 'Recipe Food must have quantity.' do
        @recipe_food.quantity = ''
        expect(@recipe_food).to_not be_valid
    end

    it 'Quantity is not string' do
        @recipe_food.quantity = 2
        expect(@recipe_food).to be_valid
    end

    it 'Recipe Food have a food id' do
        @recipe_food.recipe_id = 1
        expect(@recipe_food.recipe_id).to eql(1)
    end
end
end
