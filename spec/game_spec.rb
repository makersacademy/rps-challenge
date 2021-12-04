require 'game'

describe Game do
  let!(:player1) { double("player", name: "Wednesday") }
  let!(:player2) { double("player", name: "Thing") }
  let!(:game) { Game.new(player1, player2) }

  context "needs two players to play" do
    it "has a player1" do
      expect(game.player1).to eq player1
    end

    it "has a player2" do
      expect(game.player2).to eq player2
    end
  end
end
