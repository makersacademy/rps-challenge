require "game"
require "player"

describe Game do
  subject(:game) {described_class.new(player1)}
  let(:player1)  {instance_double("Player", name: "Player1")}

  describe "#defaults" do
    it "initialises with a player" do
      expect(game.player1).to eq player1
    end
  end


end
