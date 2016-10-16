require 'spec_helper'

feature 'enter names' do
    scenario 'player can enter name to play against AI' do
      visit('/')
      click_button "Single Player"
      find_field("Player's name").value
    end

    scenario 'player can submit name to play against AI' do
      single_player_login
      expect(page).to have_content 'Thousand fingers vs AI'
    end
end
