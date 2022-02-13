require 'game'

describe Game do
  subject(:game) { described_class.new(player1) }
  let(:player1) { double :player }

  describe '#player1' do
    it 'begins with player 1' do
      expect(game.player1). to eq player1
    end
  end
end
