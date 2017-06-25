require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#.create' do
    it 'creates a new instance of game' do
      Game.create(player)
      expect(Game.instance).to respond_to(:player)
    end
  end

  describe '#initialize' do
    it 'is initialized with a player' do
      expect(game.player).to_not be_nil
    end
  end
end
