require "./lib/game"
require "pry"
require "./lib/player"

describe Game do

  let(:player) { double :player_class }
  let(:game) { described_class.new(player) }

  # describe "#move" do
  #   it "returns a game move" do
  #     game.move
  #     expect(game.game_move).to eq("Rock").or eq("Paper"). or eq("Scissors")
  #   end
  # end

  describe "#calculate" do

    context "Player moves rock" do
      #let(:player) { double :player_class, :player_move => "Rock"}
      #let(:game) { described_class.new(player) }

      it "returns who's won" do
       player = Player.new("Florence")
       game = Game.new(player)
       player.action("Rock")

       allow(game).to receive(:move) { "Rock" } #move can't return rock

        # allow(player).to receive(:player_move) { "Rock" }
        # game.move
        # player.player_move

        #i think if I don't call move in the method, then game_move is in fact never being called?
        expect(game.calculate).to eq("It's A Draw!")


      end
    end
  end

end
