require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '.create' do
    it 'initializes a new game instance' do
      expect(described_class).to receive(:new)
      described_class.create(player,computer)
    end
  end

  describe '.instance' do

    it 'returns nil if there is no game instance' do
      expect(described_class.instance).to be_nil
    end

    it 'returns the game instance after creation' do
      game = described_class.create(player, computer)
      expect(described_class.instance).to eq game
    end
  end

end
