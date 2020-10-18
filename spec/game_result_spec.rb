require 'game'

describe Game do
  describe '#result' do
    it 'informs the player they have won a game' do
      game = Game.new("Rock", "Scissors")
      expect(game.result). to eq 'You won!'
    end
  end
end
