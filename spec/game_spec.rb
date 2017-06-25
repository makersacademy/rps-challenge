require 'game'
require 'player'

describe Game do
  let(:player) { double(:player, name: 'jini') }
  subject(:game) { described_class.new(player) }

  describe '#attributes' do
    it 'gets player' do
      expect(game.player).to eq player
    end
  end
end
