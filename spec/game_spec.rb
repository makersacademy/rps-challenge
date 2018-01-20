require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '.create' do
    it 'stores game instance in class instance variable' do
      Game.start player
      expect(Game.current_game).to be_a Game
    end
  end

  describe '#player' do
    it 'returns the player object' do
      expect(game.player).to be player
    end
  end
end
