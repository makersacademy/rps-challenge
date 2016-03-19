require "player"

describe Player do
  subject(:player) { described_class.new("Fluffy")}

  describe "#name" do
    it "should display player's name" do
      expect(player.name).to eq "Fluffy"
    end
  end
end
