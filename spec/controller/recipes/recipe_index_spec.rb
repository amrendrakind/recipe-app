require 'rails_helper'

RSpec.describe 'Recipe', type: :feature do
  before :each do
    @user = User.create(name: 'amar', email: 'amar@gmail.com', password: '123456')
    @recipe = Recipe.create(name: 'Recipe1', preparation_time: 10.5, cooking_time: 20.5, description: 'Description1',
                            public: true, user: @user)
    @recipe.save
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'Renders the Recipe index page' do
    sleep(2)
    click_link 'Recipes'
    expect(current_path).to eql("/users/#{@user.id}/recipes")
  end

  it 'Displays the recipe table' do
    sleep(2)
    click_link 'Recipes'
    expect(page).to have_content('Recipes Lists')
  end

  it 'Has an option to add recipes' do
    sleep(2)
    click_link 'Recipes'
    sleep(2)
    expect(page).to have_content('Add Recipe')
  end

  it 'Has an option to delete recipes' do
    click_link 'Recipes'
    expect(page).to have_content('Remove')
  end
end
