require 'spec_helper'

feature 'Starting the game' do
  scenario 'I choose which version of the game to play' do
      visit '/'
      fill_in('player_name', with: 'Rebecca')
      click_button('Submit')
      click_button('Single Player')
      expect(page).to have_content('Single Player Game')
  end
end