require 'spec_helper'

feature 'entering a move' do
  describe 'move route' do
    let(:game) { double Game }

    it 'show draws' do
      allow(game).to receive(:random_move) { :rock }

      visit('/')
      fill_in 'player', with: 'Alice'
      click_button 'Go!'
      choose 'rock'
      click_button 'Go!'
      expect(page).to have_content("Nobody wins")
    end
  end
end