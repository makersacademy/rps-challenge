require "player"

describe Player do
  subject(:player) { described_class.new("Antonio") }

  describe "#intiialize" do
    it "ensures a player is initialized with a name" do
      expect(subject.name).to eq("Antonio")
    end
    it "ensures a player is initialized with a choice" do
      expect(subject.choice).to eq(nil)
    end
  end

  describe "#add_choice" do
    it "updates the @choice with the value passed as argument" do
      subject.add_choice("rock")
      expect(subject.choice).to eq(:rock)
    end
    it "returns @choice" do
      expect(subject.add_choice("rock")).to eq(:rock)
    end
  end
end
