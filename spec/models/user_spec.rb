require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @first_user = User.create(name: 'amar', email: 'amar@gmail.com', password: '123456')
    @first_user.save
  end
  context 'Users validations' do
    it 'User name must not be blank.' do
      @first_user.name = ''
      expect(@first_user).to_not be_valid
    end

    it 'User must have email id.' do
        @first_user.email = ''
        expect(@first_user).to_not be_valid
      end
  end
end
