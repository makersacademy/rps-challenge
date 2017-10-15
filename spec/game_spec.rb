require 'game'

describe Game do
  let(:player) { double :player }
  describe '#create and #instance' do
    it 'should return the same game instance that was created' do
      Game.create(player)
      expect(Game.instance.player).to eq player
    end
  end
end
