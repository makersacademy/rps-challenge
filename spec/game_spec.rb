require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '.create' do
    it 'initializes a new game instance' do
      expect(described_class).to receive(:new)
      described_class.create(player, computer)
    end
  end

  describe '.instance' do
    it 'returns nil if there is no game instance' do
      expect(described_class.instance).to be_nil
    end

    it 'returns the game instance after creation' do
      game = described_class.create(player,computer)
      expect(described_class.instance).to eq game
    end
  end

  describe '#result' do

    subject(:game) { described_class.new(player,computer) }

    context 'player chooses rock' do

      before do
        allow(player).to receive(:choice).and_return(:rock)
      end

      it 'returns draw if computer selects rock' do
        allow(computer).to receive(:choice).and_return(:rock)
        expect(game.result).to eq "It's a DRAW!"
      end
      it 'returns lose if computer selects paper' do
        allow(computer).to receive(:choice).and_return(:paper)
        expect(game.result).to eq "You LOST!"
      end
      it 'returns win if computer selects scissors' do
        allow(computer).to receive(:choice).and_return(:scissors)
        expect(game.result).to eq "You WON!"
      end
    end
  end

end
