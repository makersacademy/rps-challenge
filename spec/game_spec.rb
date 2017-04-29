require 'game'

describe Game do
  describe '#player' do
    it 'initializes a game with a player' do
      game_new = Game.new('Bob')
      expect(game_new.player).to eq 'Bob'
    end
  end
end
