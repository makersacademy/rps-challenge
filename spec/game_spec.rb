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
end
