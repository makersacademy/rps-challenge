require 'spec_helper'

feature 'playing the game' do
  describe 'play page' do
    it 'redirects to the root page unless the player has chosen a name' do
      visit('/play')

      expect(page).to have_content('Player Name')
    end
    
    it 'prompts the player to make a move when they play for the first time' do
      visit_root_and_enter_name

      expect(page).to have_content('Make your move')
    end

    it 'prompts the player to play again if they have played before' do
      visit_root_and_enter_name
      enter_move('paper')

      expect(page).to have_content('Choose a weapon')
    end

    it 'displays the move the player has entered' do
      visit_root_and_enter_name
      enter_move('scissors')

      expect(page.find('#player_image')['src']).to have_content('scissors.png')
    end
  end
end
