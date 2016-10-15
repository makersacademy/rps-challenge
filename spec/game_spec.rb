require 'game'

describe Game do

  describe '#initialize' do
    it 'creates an array that holds the player' do
      player_1 = Player.new("Dionysis")
      game = Game.new(player_1)
      expect(game.players).to eq [player_1]
    end
  end
  
end
