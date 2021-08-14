require 'spec_helper'

feature 'after entering a move' do
  describe 'move route' do
    let(:game) { double Game }

    it 'adds the correct player move to the session' do
      visit('/')
      fill_in 'player', with: 'Alice'
      click_button 'Go!'
      choose 'rock'
      click_button 'Go!'
      expect(page.get_rack_session_key('player_move')).to eq('rock')
    end

    it 'adds the correct robot move to the session' do
      visit('/')
      fill_in 'player', with: 'Alice'
      click_button 'Go!'
      choose 'rock'
      click_button 'Go!'
      expect([:rock, :paper, :scissors])
      .to include(page.get_rack_session_key('robot_move'))
    end
  end
end