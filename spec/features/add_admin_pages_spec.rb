require 'rails_helper'

describe 'creating an admin account' do
  it 'will create a new account' do
    visit new_admin_registration_path
    fill_in 'Email', :with => 'admin@other.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_on 'Sign up'
    expect(page).to have_content('admin@other.com')
  end
end
