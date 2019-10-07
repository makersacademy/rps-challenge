require './app/models/player.rb'

describe Player do
  let(:player) { described_class.new("Harry") }

  describe "#name" do
    it "returns the name of the player" do
      expect(player.name).to eq("Harry")
    end
  end
end