require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  context '#initialize' do
    it 'creates a player' do
      expect(game.player).to eq player
    end

    it 'allow a cpu to exists' do
      expect(game.computer).to eq computer
    end
  end
end
