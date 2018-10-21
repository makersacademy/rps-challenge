require 'spec_helper'

feature 'Starting the Game' do
  scenario 'Accdepting no of players' do
    sign_in_and_player_number
    expect(page).to have_content 'Please enter player names'
  end
end

#Feature / scenario is in Capybara
