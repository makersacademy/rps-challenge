require 'spec_helper'

feature 'playing the game' do
  describe 'play page' do
    it 'prompts the player to make a move' do
      visit('/')
      fill_in 'player', with: 'Alice'
      click_button 'Go!'
      expect(page).to have_content('Make your move!')
    end

    it 'allows the player to enter a move' do
      visit('/')
      fill_in 'player', with: 'Alice'
      click_button 'Go!'
      choose 'rock'
      click_button 'Go!'
      expect(page).to have_content('You chose: Rock')
    end
  end
end
