require 'scissors'

describe Scissors do
  subject(:scissors) { described_class.new }
  let(:paper) { double(:paper) }
  let(:rock) { double(:rock) }

  describe "#versus"
    it "returns lose against rock" do
      allow(rock).to receive(:is_a?).with(Paper) { false }
      allow(rock).to receive(:is_a?).with(Scissors) { false }
      allow(rock).to receive(:is_a?).with(Rock) { true }
      expect(scissors.versus(rock)).to eq("Lose")
    end

    it "returns win against paper" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      expect(scissors.versus(paper)).to eq("Win")
    end

    it "returns draw against scissors" do
      allow(scissors).to receive(:is_a?).with(Paper) { false }
      allow(scissors).to receive(:is_a?).with(Scissors) { true }
      allow(scissors).to receive(:is_a?).with(Rock) { false }
      expect(scissors.versus(scissors)).to eq("Draw")
    end
end
