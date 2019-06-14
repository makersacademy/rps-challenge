require 'game'

describe Game do

  let(:player_double) {double:'player'}
  subject(:game) { Game.new(player_double) }

  describe '#initialize' do
    it 'is initialised with a Player' do
      expect(game.player).to eq(player_double)
    end
  end

end