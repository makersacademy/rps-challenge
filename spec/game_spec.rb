require 'game'
require 'player'

describe Game do
  let(:alpha) { double :player }
  subject(:game) { Game.new(alpha) }

  describe '#player1' do
    it 'retrieves player 1' do
      expect(game.player1).to eq alpha
    end
  end
end
