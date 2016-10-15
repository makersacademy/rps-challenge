require 'spec_helper'

feature 'enter names' do
    scenario 'sumbit player name to play against AI' do
      visit('/')
      click_button "Single Player"
      expect(page).to have_content 'Enter name of player'
    end
end
