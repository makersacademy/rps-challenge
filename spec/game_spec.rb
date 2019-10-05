require "game"

describe Game do

  let(:player) { double "Player.new", name: "Melvin" }
  let(:game) { described_class.new(player) }

  describe "#initialize" do
    it "initializes with a player injected into the game" do
      expect(game.player.name).to eq "Melvin"
    end
  end

end
