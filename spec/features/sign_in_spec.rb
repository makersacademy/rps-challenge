require 'spec_helper'

feature 'user signs in' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1_name, with: 'Judy'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to the game Judy'
  end
end
