require "game"

describe Game do

  describe "#initialize" do
    it "should store a players name" do
      game = Game.new("Derek")
      expect(game.player).to eq "Derek"
      p Game.current
    end
  end
end

describe Game do

  subject(:game_class) { described_class }

  describe "#create" do
    it "should create a new game" do
      game_class.create("Derek")
      expect(game_class.current).to be_a(Game)
    end

    it "should have a game with player name Derek" do
      expect(game_class.current.player).to eq "Derek"
    end
  end

end
