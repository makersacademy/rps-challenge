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
end
