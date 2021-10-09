require 'player'

describe Player do
  subject(:player1) { Player.new('Alex') }

  describe '#name' do
    it 'returns the players name' do
      expect(player1.name).to eq 'Alex'
    end
  end

  describe '#score' do
    it 'returns the players score' do
      expect(player1.score).to eq 0
    end
  end

  describe '#update score' do
    it 'increase by 1 for a win' do
      outcome = 'win'
      expect { player1.update_score(outcome) }.to change { player1.score }.by (1)
    end
    it 'decreases by 1 for a loss' do
      outcome = 'lose'
      expect { player1.update_score(outcome) }.to change { player1.score }.by (-1)
    end
    it 'stays the same for a draw' do
      outcome = 'draw'
      expect { player1.update_score(outcome) }.to_not change {player1.score }
    end

  end
end