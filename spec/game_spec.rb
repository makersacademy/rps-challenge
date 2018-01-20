require "game"

describe Game do

  describe "#initialize" do
    it "should store a players name" do
      game = Game.new("Derek")
      expect(game.player).to eq "Derek"
    end
  end
end

describe Game do

  describe "#current" do
    it "start with current game being nil" do
      expect(Game.current).to be nil
    end
  end

  describe "#create" do
    it "should create a new game" do
      Game.create("Derek")
      expect(Game.current).to be_a(Game)
    end
  end

end
