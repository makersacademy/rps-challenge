require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe '#create' do
    it 'creates an instance of the game' do
      described_class.create(player)
      expect(described_class.instance).to be_an_instance_of described_class
    end
  end
end
