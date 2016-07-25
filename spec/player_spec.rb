require "player"

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { "Sal" }
  context "Player" do
    it "returns a name for a player" do
      expect(player.name).to eq "Sal"
    end

    it "starts with no attacks" do
      expect(player.attack).to eq nil
    end

  end
end
