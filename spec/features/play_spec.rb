require 'spec_helper'

feature 'playing the game' do
  describe 'play page' do
    it 'prompts the player to make a move' do
      visit_root_and_enter_name

      expect(page).to have_content('Make your move!')
    end

    it 'allows the player to enter a move' do
      visit_root_and_enter_name
      enter_move('rock')

      expect(page).to have_content('You chose: Rock')
    end
  end
end
