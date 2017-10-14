require 'paper'

describe Paper do

  subject(:paper) { described_class.new }
  let(:rock) { double(:rock) }
  let(:scissors) { double(:scissors) }

  describe "#versus"
    it "returns lose against scissors" do
      allow(scissors).to receive(:is_a?).with(Paper) { false }
      allow(scissors).to receive(:is_a?).with(Scissors) { true }
      allow(scissors).to receive(:is_a?).with(Rock) { false }
      expect(paper.versus(scissors)).to eq("Loses")
    end

    it "returns win against rock" do
      allow(rock).to receive(:is_a?).with(Paper) { false }
      allow(rock).to receive(:is_a?).with(Scissors) { false }
      allow(rock).to receive(:is_a?).with(Rock) { true }
      expect(paper.versus(rock)).to eq("Wins")
    end

    it "returns draw against paper" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      expect(paper.versus(paper)).to eq("Draw")
    end
end
