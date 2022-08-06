require 'rails_helper'

RSpec.describe Food, type: :model do
  before :each do
    amar = User.create(name: 'amar', email: 'amar@gmail.com', password: '123456')
    amar.save
    @recipe = Recipe.create(name: 'Recipe1', preparation_time: 10.5, cooking_time: 20.5, description: 'Description1', public: true, user: amar)
    @recipe.save
  end
  context 'Recipe validations' do

    it 'Recipe must have description.' do
        @recipe.description = ''
        expect(@recipe).to_not be_valid
    end

    it 'Preperation time is not string' do
        @recipe.preparation_time = 5
        expect(@recipe).to be_valid
    end

    it 'cooking_time is not a string' do
        @recipe.cooking_time = 10
        expect(@recipe).to be_valid
    end
end
end
