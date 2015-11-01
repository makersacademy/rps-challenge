require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:case1) { {player_one: 'Rock', player_two: 'Paper'} }
  let(:case2) { {player_one: 'Rock', player_two: 'Scissors'} }
  let(:case3) { {player_one: 'Rock', player_two: 'Rock'} }
  let(:case4) { {player_one: 'Scissors', player_two: 'Paper'} }
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
      expect(game.winner 'Rock', 'Paper').to eq 'Computer wins'
    end
    it 'returns the winner of the game' do
      expect(game.winner 'Rock', 'Scissors').to eq 'You win'
    end
    it 'returns the winner of the game' do
      expect(game.winner 'Rock', 'Rock').to eq 'It is a draw' 
    end
    it 'returns the winner of the game' do
      expect(game.winner 'Scissors', 'Paper').to eq 'You win'
    end
  end
end
