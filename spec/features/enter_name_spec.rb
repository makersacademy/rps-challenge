require 'capybara/rspec'
require_relative '../../app'
require './lib/player'

Capybara.app = RpsApp

feature 'enter name' do
  scenario 'submit name before starting the game' do
    visit('/names')
    fill_in :player_name, with: "Vale"
    click_button 'Submit'

    expect(page).to have_content('Start the game!')
  end
end
