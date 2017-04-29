require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(Player.new(:Trump, :Clinton)) }

  describe '#current' do
    it 'returns correct information when not instantiated first' do
      game_instance = Game.start(Player.new(:Corbyn, :May))
      expect(Game.current).to eq game_instance
    end
  end

  describe '#add_player_two' do
    it 'changes player_2 to specified player' do
      game.add_player_two(:Macron)
      expect(game.player_2).to eq :Macron
    end
  end
end
