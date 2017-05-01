require 'new_game'

describe NewGame do
  describe '#opponent_choice?' do
    it 'returns rock, paper or scissors' do
      expect(['rock', 'paper', 'scissors']).to include(subject.opponent_choice?)
    end
  end
end
