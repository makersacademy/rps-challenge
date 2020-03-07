require "player"

describe Player do
  subject { described_class.new("Nima") }

  context "has attributes" do
    it "name" do
      expect(subject).to have_attributes(name: "Nima")
    end
    it "points" do
      expect(subject).to have_attributes(points: 0)
    end
    it "hand" do
      expect(subject).to have_attributes(hand: "")
    end
  end
end
