require 'spec_helper'

describe 'logging in' do
  let!(:user){ FactoryGirl.create(:user) }

  it 'lets a user log in' do
    visit root_path
    fill_in 'email', with: user.email
    fill_in 'password', with: 'test123'
    click_button 'Sign In'
    page.should have_content "Welcome #{user.name}"
  end
end
