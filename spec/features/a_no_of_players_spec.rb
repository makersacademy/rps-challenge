require 'spec_helper'

feature 'A - Starting the Game' do
  scenario 'Accepting number of players from dropdown' do
    sign_in_and_player_number
    expect(page).to have_content 'Please enter player names'
  end
end

#Feature / scenario is in Capybara
