require 'game'

describe Game do
  subject(:game) { described_class.new }

  context '#winner' do
    it 'returns the winner of Rock - Paper' do
      expect(game.winner 'rock', 'paper').to eq :lose
    end
    it 'returns the winner of Rock - Scissors' do
      expect(game.winner 'rock', 'scissors').to eq :win
    end
    it 'returns a draw' do
      expect(game.winner 'rock', 'rock').to eq :draw
    end
    it 'returns the winner of Scissors - Paper' do
      expect(game.winner 'scissors', 'paper').to eq :win
    end
  end
end
