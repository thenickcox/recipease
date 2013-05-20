require "spec_helper"

feature 'Recipe creation' do
  scenario 'Successful creation' do
    user = FactoryGirl.create(:user)
    recipe = FactoryGirl.create(:recipe)
    page.visit '/'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
    page.should have_content 'My Recipes'
    page.visit new_user_recipe_path(user.id)
    page.should have_content 'New recipe'
    fill_in 'Name', with: 'Recipe'
    fill_in 'Source', with: 'me'
    fill_in 'Link', with: 'lol'
    fill_in 'Directions', with: 'Make it.'
    click_button 'Save'
    page.should have_content 'Recipe was successfully created.'
    page.should_not have_content 'Lasagna'
  end
end
