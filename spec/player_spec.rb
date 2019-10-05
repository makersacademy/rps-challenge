require "player"

describe Player do

  let(:player) { described_class.new("Melvin") }

  describe "#name" do
    it "returns the player name" do
      expect(player.name).to eq "Melvin"
    end
  end

end
