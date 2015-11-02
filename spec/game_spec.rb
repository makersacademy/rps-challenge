require 'game'

describe Game do
  subject(:game) { described_class.new }

  context '#winner' do
    it 'returns the winner of Rock - Paper' do
      expect(game.winner 'rock', 'paper').to eq 'Computer wins'
    end
    it 'returns the winner of Rock - Scissors' do
      expect(game.winner 'rock', 'scissors').to eq 'You win'
    end
    it 'returns a draw' do
      expect(game.winner 'rock', 'rock').to eq 'It is a draw'
    end
    it 'returns the winner of Scissors - Paper' do
      expect(game.winner 'scissors', 'paper').to eq 'You win'
    end
  end
end
