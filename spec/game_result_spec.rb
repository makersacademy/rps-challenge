require 'game'

describe Game do
  describe '#result' do
    it 'informs the player they have won a game' do
      game = Game.new("Rock", "Scissors")
      expect(game.result). to eq 'You won!'
    end

    it 'the player and comp can draw a game' do
      game = Game.new("Rock", "Rock")
      expect(game.result). to eq "It's a draw, play again?"
    end

    it 'informs the player they have lost a game' do
      game = Game.new("Rock", "Paper")
      expect(game.result). to eq "You lose!"
    end
  end
end
