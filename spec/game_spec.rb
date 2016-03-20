require 'game'

describe Game do
  let(:player) { double :player }
  describe 'Game.player' do
    it 'returns the player instance' do
      Game.start player
      expect(Game.player).to eq player
    end
  end
end
