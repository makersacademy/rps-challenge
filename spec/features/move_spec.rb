require 'spec_helper'

feature 'after entering a move' do
  describe 'move route' do
    it 'adds the correct player move to the session' do
      visit_root_and_enter_name
      enter_move('rock')

      expect(page.get_rack_session_key('player_move')).to eq('rock')
    end

    it 'adds the correct robot move to the session' do
      visit_root_and_enter_name
      enter_move('paper')

      expect([:rock, :paper, :scissors])
      .to include(page.get_rack_session_key('robot_move'))
    end

    it 'adds the winner to the session' do
      visit_root_and_enter_name
      enter_move('scissors')

      player = page.get_rack_session_key('player')

      expect([player, 'Nobody', 'Robot'])
      .to include(page.get_rack_session_key('winner'))
    end
  end
end