require 'rails_helper'

RSpec.describe 'Food', type: :feature do
  before :each do
    @user = User.create(name: 'amar', email: 'amar@gmail.com', password: '123456')
    @food = Food.create(name: 'Food1', measurement_unit: 'g', price: 10.5, quantity: 10, user: @user)
    @food.save
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    click_link 'Foods'
  end

  it 'renders the food new page' do
    click_link 'Add Food'
    expect(current_path).to eql("/users/#{@user.id}/foods/new")
  end

  it 'Displays the form to add food' do
    click_link 'Add Food'
    expect(page).to have_content('Add New Foods')
  end

  it 'has a submit button' do
    click_link 'Add Food'
    expect(page).to have_content('Add New Food')
  end

  it 'The form can be submitted' do
    click_link 'Add Food'
    click_on 'Add New Food'
    expect(current_path).to eql("/users/#{@user.id}/foods/new")
  end
end
