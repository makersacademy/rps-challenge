require "player"

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { "Sal" }
  context "a player has a name" do
    it "returns a name for a player" do
      expect(player.name).to eq "Sal"
    end
  end
end
