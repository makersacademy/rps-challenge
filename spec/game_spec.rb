require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#player_name' do
    it 'returns the player name' do
      expect(game.player).to eq player
    end

  end

end
