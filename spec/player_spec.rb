require "player"

describe Player do

  subject(:player_1) { described_class.new("Player 1") }

  describe "#name" do
    it "Returns player 1" do
      expect(player_1.name).to eq "Player 1"
    end
  end

  describe "#move" do
    it "Stores a players move" do
      player_1.move("Rock")
      expect(player_1.moves).to eq "Rock"
    end
  end

end
