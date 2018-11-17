require 'game'
require 'player'

describe Game do
  let(:player) { double :player }
  let(:karen) { double :player, name: "Karen" }
  let(:ai_player) { double :player, name: "Computer" }
  let(:game) { Game.new(karen) }

  describe "initialize" do
    it "creates an instance of Game with a player" do
      expect(game.players).to include karen
    end
  end

  describe "add_player" do
    it "adds another player to the Game" do
      game.add_player(ai_player)
      expect(game.players).to include ai_player
    end
   end
end
