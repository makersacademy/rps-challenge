require "round"

describe Round do

  let(:player) { double(:player, name: "Antonio") }
  subject(:round) { described_class.new(player) }

  describe "#intiialize" do
    it "ensures a round is initialized with a player" do
      expect(round.player).to eq(player)
    end
  end
end
