require "./lib/game"
require "pry"

describe Game do

  let(:player) { double :player_class }
  let(:game) { described_class.new(player) }

  describe "#move" do
    it "returns a game move" do
      game.move
      expect(game.game_move).to eq("Rock").or eq("Paper"). or eq("Scissors")
    end
  end

  describe "#calculate" do

    context "Player moves rock" do
      let(:player) { double :player_class, :player_move => "Rock"}
      let(:game) { described_class.new(player) }

      it "returns who's won" do
        allow(game).to receive(:game_move) { "Rock" }
        game.game_move
        player.player_move
      
        expect(game.calculate).to eq("It's A Draw!")


      end
    end
  end

end
