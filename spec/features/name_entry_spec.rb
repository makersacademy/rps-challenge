require 'spec_helper'
require 'capybara'

feature 'Entering name' do
  scenario 'Submit name' do
    visit('/')
    fill_in :player_name, with: 'Sam'
    click_button "Let's PLAY!"
    expect(page).to have_content 'Good luck Sam!'
  end
end
