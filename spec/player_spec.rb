require 'player'

describe Player do

  subject(:player) { described_class.new("Pookie") }

  describe "#name" do
    it "returns a player's name" do
      expect(player.name).to eq "Pookie"
    end
  end

  describe "#select_move" do
    it "enables the player to select a move" do
      player.select_move("Rock")
      expect(player.move).to eq "Rock"
    end
  end
  
end
