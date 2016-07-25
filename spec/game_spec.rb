require 'game'

describe Game do
  let(:player) { Player.new("Titus") }
  subject(:game) { described_class.new(player) }

  describe '#player' do
    it 'returns a player with a name' do
      expect(game.player.name).to eq "Titus"
    end

  end
end
