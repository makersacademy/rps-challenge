require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player, name: 'Frank' }

  describe '#player' do
    it 'registers a player in the game' do
      expect(game.player).to eq player
    end
  end

  describe '#create' do
    it 'starts a new game' do
      expect(described_class.instance).to be_an_instance_of described_class
    end
  end
end
