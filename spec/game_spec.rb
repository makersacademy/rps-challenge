require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#create' do
    it 'creates instance of game with player and computer' do
      expect(described_class).to receive(:new)
      described_class.create(player, computer)
    end
  end

  describe '#instance' do
    it 'returns the game instance' do
      game = described_class.create(player, computer)
      expect(described_class.instance).to eq game
    end
  end

end
