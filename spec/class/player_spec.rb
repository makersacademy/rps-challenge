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

  context "method responds to" do
    it "#add_points" do
      expect(subject).to respond_to(:add_points)
    end
    it "#set_hand" do
      expect(subject).to respond_to(:set_hand)
    end
  end

  context "method functionality" do
    it "#add_points adds 1 to points" do
      expect{subject.add_points}.to change{subject.points}.by(1)
    end
    it "#set_hand to set hand to rock" do
      subject.set_hand("rock")
      expect(subject.hand).to eq("rock")
    end
    it "#set_hand to pick random hand if no arguments are passed through" do
      subject.set_hand
      expect(subject.hand).to eq("rock").or eq("paper").or eq("scissors")
    end
  end
  
end
