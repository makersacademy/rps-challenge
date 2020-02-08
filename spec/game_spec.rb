require 'game'

describe Game do
  subject(:game) { described_class.new("dave") }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq "dave"
    end
  end

  describe '#computer_move' do
    it 'returns scissors, paper or rock' do
      srand(4)
      expect(game.computer_move).to eq 'Rock'
    end
  end
end
