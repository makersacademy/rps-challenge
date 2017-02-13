require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new(:player) }

  context '#initializes with a player' do
    it 'initializes with a player' do
      expect(game.player).to eq :player
    end
  end

end
