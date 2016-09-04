require 'spec_helper'

feature 'name registration' do
  scenario 'display name' do
    visit '/'
    fill_in 'name', with: 'Tim'
    click_button 'Submit'
    expect(page).to have_content 'Tim'
  end
end
