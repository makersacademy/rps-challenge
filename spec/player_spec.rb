require 'player'

describe Player do

  subject(:player) { described_class.new("Pookie") }

  describe "#Name" do
    it "returns a playe's name" do
      expect(player.name).to eq "Pookie"
    end
  end
end
