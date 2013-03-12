require 'spec_helper'

describe 'Creating a user' do

  it 'adds a new user' do
    visit new_user_registration_path
    fill_in 'Email', :with => 'me@me.com'
    [ '#user_password', '#user_password_confirmation' ].each do |p| 
      find(p).set '12345678' 
    end
    click_button 'Sign up'
    page.should have_content 'You have signed up successfully.'
    current_path.should == recipes_path
  end

end
