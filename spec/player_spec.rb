require 'player'

describe Player do
  subject(:player) { described_class.new("Yvonne") }

  describe "#name" do
    it "Returns the player's name" do
      expect(player.name).to eq "Yvonne"
    end
  end

  describe "#option" do
    it "Stores the player's option in an instance variable" do
      player.move("Paper")
      expect(player.option).to eq "Paper"
    end
  end
end
