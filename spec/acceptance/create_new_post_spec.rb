require 'spec_helper'

describe 'creating a new post' do
  it 'lets an author create a new post to be edited' do
    visit root_path
    click_link 'Get Your Content Edited'
    fill_in 'Title', with: 'Test Title'
    fill_in 'Content', with: 'Test Content'
    fill_in 'Notes', with: 'Test Notes'
    fill_in 'Bounty', with: 500
    fill_in 'new_post_email', with: 'test@user.com'
    fill_in 'new_post_password', with: 'test123'
    click_button 'Submit'
    page.should have_content 'New Post Created'
  end
end
