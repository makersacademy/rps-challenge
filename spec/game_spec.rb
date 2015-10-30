require 'game'

describe Game do
  subject(:game) { described_class.new }

  before :each do 
    srand(67809)
  end

  context '#computer_move' do
    it 'returns a random move from Rock Paper Scissors' do
      expect(game.computer_move).to eq 'Scissors'
    end
  end

  context '#winner' do
    it 'returns the winner of the game' do
      expect(game.winner 'Rock', 'Paper').to eq 'Paper'
    end
    it 'returns the winner of the game' do
      expect(game.winner 'Rock', 'Scissors').to eq 'Rock'
    end
    it 'returns the winner of the game' do
      expect(game.winner 'Rock', 'Rock').to eq 'Draw' 
    end
    it 'returns the winner of the game' do
      expect(game.winner 'Scissors', 'Paper').to eq 'Scissors'
    end
  end
end
