require 'spec_helper'

feature 'Starting the game' do
  scenario 'I choose single player' do
      visit '/'
      fill_in('player_name', with: 'Rebecca')
      click_button('Submit')
      click_button('Single Player')
      expect(page).to have_content('Single Player Game')
  end

  scenario 'I choose two player' do
      visit '/'
      fill_in('player_name', with: 'Rebecca')
      click_button('Submit')
      click_button('Two Players')
      expect(page).to have_content('Two Player Game')
  end
end