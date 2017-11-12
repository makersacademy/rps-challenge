require "player"

describe Player do
  subject(:player) { described_class.new("Antonio") }

  describe "#intiialize" do
    it "ensures a player is initialized with a name" do
      expect(subject.name).to eq("Antonio")
    end
  end
end
