require 'rails_helper'

RSpec.describe Food, type: :model do
  before :each do
    amar = User.create(name: 'amar', email: 'amar@gmail.com', password: '123456')
    amar.save
    @food = Food.create(name: 'Food1', measurement_unit: 'g', price: 10.5, quantity: 10, user: amar)
    @food.save
  end
  context 'Food validations' do
    it 'Food must have price.' do
      @food.price = ''
      expect(@food).to_not be_valid
    end

    it 'price is not string' do
      @food.price = 5
      expect(@food).to be_valid
    end
  end
end
