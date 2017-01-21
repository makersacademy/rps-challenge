require "player"

describe Player do
  subject(:player1) {described_class.new("Player1")}

  describe "#name" do
    it "returns the players name" do
      expect(player1.name).to eq "Player1"
    end
  end
end
