require "player"

describe Player do
  subject(:player) { described_class.new("Derek") }

  describe "initialize" do
    it "should store players name" do
      expect(player.name).to eq "Derek"
    end

    it "choice should be nil" do
      expect(player.choice).to be nil
    end
  end

  describe "#move" do
    it "should set choice to rock" do
      player.move("rock")
      expect(player.choice).to eq "rock"
    end

    it "should set choice to paper" do
      player.move("paper")
      expect(player.choice).to eq "paper"
    end
  end

end
