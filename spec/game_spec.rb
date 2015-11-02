require 'game'

describe Game do
  subject(:game) { described_class.new }

  context '#winner' do
    it 'returns the winner of Rock - Paper' do
      expect(game.winner 'Rock', 'Paper').to eq 'Computer wins'
    end
    it 'returns the winner of Rock - Scissors' do
      expect(game.winner 'Rock', 'Scissors').to eq 'You win'
    end
    it 'returns a draw' do
      expect(game.winner 'Rock', 'Rock').to eq 'It is a draw'
    end
    it 'returns the winner of Scissors - Paper' do
      expect(game.winner 'Scissors', 'Paper').to eq 'You win'
    end
  end
end
