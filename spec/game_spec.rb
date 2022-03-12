require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#player' do
    it 'has an instance of Player' do
      expect(game.player).to eq player
    end
  end

  describe '#computer' do
    it 'has an instance of Computer' do
      expect(game.computer).to eq computer
    end
  end
end
