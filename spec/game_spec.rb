require 'game'

describe Game do
  let(:player) { double :player }
  let(:karen) { double :player, name: "Karen" }
  let(:ai_player) { double :player, name: "Computer" }
  let(:game) { Game.new(karen) }

  describe "add_player" do
    it "adds another player to the Game" do
      game.add_player(ai_player)
      expect(game.players).to include ai_player
    end
  end
end
