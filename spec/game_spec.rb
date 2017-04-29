require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(Player.new(:Trump, :Rock)) }

  describe '#current' do
    it 'returns correct information when not instantiated first' do
      game_instance = Game.start(Player.new(:Clinton, :Paper))
      expect(Game.current).to eq game_instance
    end
  end
end
