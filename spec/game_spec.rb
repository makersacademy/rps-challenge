require "./lib/game"

describe Game do

  let(:player) { double :player_class }
  let(:game) { described_class.new(player) }

  describe "#move" do
    it "returns a game move" do
      game.move
      expect(game.game_move).to eq("Rock").or eq("Paper"). or eq("Scissors")
    end
  end

end
