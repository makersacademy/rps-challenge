require "game"

describe Game do

  describe "#initialize" do
    it "should store a players name" do
      game = Game.new("Derek")
      expect(game.player).to eq "Derek"
    end
  end
end
