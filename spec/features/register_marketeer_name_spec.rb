# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
require_relative '../spec_helper'

feature 'Register name' do
  scenario 'Submit player name' do
    visit('/')
    fill_in :player_name, with: 'Alwin'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Alwin'
  end
end
