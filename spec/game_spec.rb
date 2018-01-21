require 'game'

describe Game do

  let(:player) { double :player }
  subject(:game) { described_class.new(player) }

  describe '#initialize' do
    it 'creates a new player' do
      expect(game.player).to eq player
    end
  end

end
