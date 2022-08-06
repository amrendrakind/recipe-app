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
  end

  it 'renders the food index page' do
    sleep(5)
    click_link 'Foods'
    expect(current_path).to eql("/users/#{@user.id}/foods")
  end

  it 'Displays the food table' do
    sleep(5)
    click_link 'Foods'
    expect(page).to have_content('Foods Lists')
  end

  it 'Has an option to add food' do
    click_link 'Foods'
    expect(page).to have_content('Add Food')
  end

  it 'Has an option to delete food' do
    click_link 'Foods'
    expect(page).to have_content('Delete')
  end
end
