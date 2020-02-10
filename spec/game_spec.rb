require 'game'

describe Game do
  before (:example) do
  end

  describe "#current_player?" do

    it "Should return player 1 as the first player" do
      player1 = double("player double 1")
      player2 = double("player double 2")
      game = Game.new(player1, player2)
      expect(game.current_player?).to eq player1
    end
    it "should switch between player 1 and 2" do
      player1 = double("player double 1")
      player2 = double("player double 2")
      game = Game.new(player1, player2)
      p game.players[0]
      p game.players[1]
      game.current_player?
      expect(game.current_player?).to eq player2
      expect(game.current_player?).to eq player1
    end
  end
end
