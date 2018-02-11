require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, computer) }
  let(:player_1) { double 'Player 1' }
  let(:computer) { double 'Computer' }

  describe '#initialize' do
    it 'creates a human player' do
      expect(game.player_1).to eq player_1
    end

    it 'creates a computer player' do
      expect(game.computer).to eq computer
    end
  end

end
