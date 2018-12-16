require 'game'

describe Game do
  subject(:game) { Game.new(player) }
  let(:player) { double :player }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end
end
