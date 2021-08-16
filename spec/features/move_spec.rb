require 'spec_helper'

feature 'after entering a move' do
  describe 'move route' do
    let(:game) { double Game }

    it 'adds the correct player move to the session' do
      visit_root_and_enter_name
      enter_move('rock')

      expect(page.get_rack_session_key('player_move')).to eq('rock')
    end

    it 'adds the correct robot move to the session' do
      visit_root_and_enter_name
      enter_move('paper')

      expect(['rock', 'paper', 'scissors'])
      .to include(page.get_rack_session_key('robot_move'))
    end

    it 'creates a session variable for the winner' do
      visit_root_and_enter_name
      enter_move('scissors')

      expect(page.get_rack_session_key('winner')).to_not eq(nil)
      expect([-1, 0, 1]).to include(page.get_rack_session_key('winner'))
    end

    it 'adds the correct winner to the session' do
      visit_root_and_enter_name
      enter_move('rock')

      winner = page.get_rack_session_key('winner')
      robot_move = page.get_rack_session_key('robot_move')

      expect(winner).to eq(result_vs_rock(robot_move))
    end
  end
end
