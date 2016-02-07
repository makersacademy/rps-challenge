require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#multiplayer?' do
    let(:multi_player_game) do
      described_class.multi_player(player_1, player_2)
    end

    it 'returns false for a single player game' do
      expect(game.multiplayer?).to be_falsy
    end

    it 'returns true for a multiplayer game' do
      expect(multi_player_game.multiplayer?).to be_truthy
    end
  end

  describe '#player' do
    context 'when passed 1' do
      it 'returns the first player' do
        expect(game.player(1)).to be player_1
      end
    end

    context 'when passed 2' do
      it 'returns the second player' do
        expect(game.player(2)).to be player_2
      end
    end

    context 'when passed an invalid player number' do
      it 'raises an error' do
        message = 'Please specify a valid player number'
        expect { game.player(3) }.to raise_error(message)
      end
    end

    context 'when passed a negative value' do
      it 'raises an error' do
        message = 'Please specify a valid player number'
        expect { game.player(-3) }.to raise_error(message)
      end
    end

    context 'when passed a non-numeric value' do
      it 'raises an error' do
        message = 'Please specify a valid player number'
        expect { game.player('invalid') }.to raise_error(message)
      end
    end
  end
end
