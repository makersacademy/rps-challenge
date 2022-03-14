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

  describe '#game_over' do

    context 'player selects scissors' do

      before do
        allow(player).to receive(:choice).and_return(:scissors)
      end

      it 'returns the player as winner when computer selects paper' do
        allow(computer).to receive(:choice).and_return(:paper)
        expect(game.game_over).to eq 'You won!'
      end

      it 'returns the computer as winner when computer selects rock' do
        allow(computer).to receive(:choice).and_return(:rock)
        expect(game.game_over).to eq 'You lost!'
      end

      it 'returns draw when computer selects scissors' do
        allow(computer).to receive(:choice).and_return(:scissors)
        expect(game.game_over).to eq 'It\'s a draw!'
      end
    end
  end
end
