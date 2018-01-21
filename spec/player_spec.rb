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

  describe "#choice" do
    it "should set to rock" do
      player.move("rock")
      expect(player.choice).to eq "rock"
    end
  end

end
