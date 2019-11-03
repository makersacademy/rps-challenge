require 'player'

describe Player do
  context "Making an instance" do
  subject(:player) { described_class.new("Robert", "paper")}

    it "has a name" do
      expect(player.name).to eq("Robert")
    end

    it "has a selection" do
      expect(player.selection).to eq("paper")
    end
  end
end