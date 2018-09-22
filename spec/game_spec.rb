require "./lib/game"
require "pry"
require "./lib/player"

describe Game do

  let(:player) { double :player_class }
  let(:game) { described_class.new(player) }

  describe "#move" do
    it "returns a game move" do
      expect(game.move).to eq("Rock").or eq("Paper"). or eq("Scissors")
    end
  end

  describe "#calculate" do

    context "Player moves rock" do
      let(:player) { double :player_class, :player_move => "Rock" }
      let(:game) { described_class.new(player) }
      it "returns who's won" do
        allow(game).to receive(:move) { "Rock" } # I couldn't determine the result of an instance variable in the way that I was
        player.player_move
        # allow(player).to receive(:player_move) { "Rock" }
        expect(game.calculate).to eq("It's A Draw!")

      end
    end
  end

end
