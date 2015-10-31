require 'spec_helper'

feature 'Enter username' do
  scenario 'submitting name' do
    visit('/')
    fill_in :username, with: 'Aaron'
    click_button 'Submit'
    expect(page).to have_content('Welcome Aaron')
  end
end
