require 'scoreboard'

describe Scoreboard do 

  subject(:scoreboard) { described_class.new }

  describe '#add_score' do 
    it 'adds 1 to player 1 score' do 
      scoreboard.add_score('Player 1 Wins')
      expect(scoreboard.player_1_score).to eq 1
    end
    it 'adds 1 to player 2 score' do 
      scoreboard.add_score('Player 2 Wins')
      expect(scoreboard.player_2_score).to eq 1
    end
    it 'doesnt add to any scores if a draw' do 
      scoreboard.add_score('Draw')
      expect(scoreboard.player_1_score).to eq 0
      expect(scoreboard.player_2_score).to eq 0
    end
  end
end