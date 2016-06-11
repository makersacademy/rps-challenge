require "player"

describe Player do
  subject { described_class.new("Van") }
  describe "#name" do
    it "should know its own name" do
      expect(subject.name).to eq("Van")
    end
  end

  describe "#choice" do
    it "should only be rock, paper or scissors" do
      subject.make_choice
      expect([:rock, :paper, :scissors]).to include(subject.choice)
    end
  end
end
