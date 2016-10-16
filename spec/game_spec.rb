require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '.create' do
    it 'initializes instance of a new game' do
      allow(described_class).to receive(:new)
      expect described_class.create(player, computer)
    end
  end

  describe '.instance' do
    it 'returns nil at no instance of a game' do
      expect(described_class.instance).to be_nil
    end

    it 'returns the game instance when created' do
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

      it 'returns draw when computer selects rock' do
        allow(computer).to receive(:choice).and_return(:rock)
        expect(game.result).to eq "DRAW!"
      end

      it 'returns lose when computer selects paper' do
        allow(computer).to receive(:choice).and_return(:paper)
        expect(game.result).to eq "YOU LOSE!"
      end

      it 'returns win when computer selects scissors' do
        allow(computer).to receive(:choice).and_return(:scissors)
        expect(game.result).to eq "YOU WIN!"
      end
    end
  end

end
