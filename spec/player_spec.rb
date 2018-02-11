require "player"

describe Player do
  subject(:player) { described_class.new("Serena") }

  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq "Serena"
    end
  end

  describe "#player_option" do
    it "stores the player's option in an instance variable" do
      player.player_option("Paper")
      expect(player.option).to eq "Paper"
    end
  end
end
