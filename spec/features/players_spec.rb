require "player"
require "game"

describe "Player" do
  subject(:player_1) { Player.new("Bowie") }
  subject(:game) { Game.new(player_1, Player.new) }

  context "#logging names" do
    it "logs player names as an instance of the Player class" do
      expect(game.players[0]).to be_an_instance_of(Player)
      expect(game.players[1]).to be_an_instance_of(Player)
    end

    it "logs player 1's name" do
      expect(game.players[0].player_name).to eq("Bowie")
    end

    it "defaults player 2 name to computer when no input given" do
      expect(game.players[1].player_name).to eq("computer")
    end
  end
end
