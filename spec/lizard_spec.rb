require 'lizard'

describe Lizard do

  subject(:lizard) { described_class.new }
  let(:paper) { double(:paper) }
  let(:scissors) { double(:scissors) }
  let(:rock) { double(:rock) }
  let(:spock) { double(:spock) }

  describe "#versus"
    it "returns win against paper" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      allow(paper).to receive(:is_a?).with(Spock) { false }
      allow(paper).to receive(:is_a?).with(Lizard) { false }
      expect(lizard.versus(paper)).to eq("Wins")
    end

    it "returns draw against lizard" do
      allow(lizard).to receive(:is_a?).with(Paper) { false }
      allow(lizard).to receive(:is_a?).with(Scissors) { false }
      allow(lizard).to receive(:is_a?).with(Rock) { false }
      allow(lizard).to receive(:is_a?).with(Spock) { false }
      allow(lizard).to receive(:is_a?).with(Lizard) { true }
      expect(lizard.versus(lizard)).to eq("Draw")
    end

    it "returns lose against scissors" do
      allow(scissors).to receive(:is_a?).with(Paper) { false }
      allow(scissors).to receive(:is_a?).with(Scissors) { true }
      allow(scissors).to receive(:is_a?).with(Rock) { false }
      allow(scissors).to receive(:is_a?).with(Spock) { false }
      allow(scissors).to receive(:is_a?).with(Lizard) { false }
      expect(lizard.versus(scissors)).to eq("Loses")
    end

    it "returns lose against rock" do
      allow(rock).to receive(:is_a?).with(Paper) { false }
      allow(rock).to receive(:is_a?).with(Scissors) { false }
      allow(rock).to receive(:is_a?).with(Rock) { true }
      allow(rock).to receive(:is_a?).with(Spock) { false }
      allow(rock).to receive(:is_a?).with(Lizard) { false }
      expect(lizard.versus(rock)).to eq("Loses")
    end

    it "returns win against spock" do
      allow(spock).to receive(:is_a?).with(Paper) { false }
      allow(spock).to receive(:is_a?).with(Scissors) { false }
      allow(spock).to receive(:is_a?).with(Rock) { false }
      allow(spock).to receive(:is_a?).with(Spock) { true }
      allow(spock).to receive(:is_a?).with(Lizard) { false }
      expect(lizard.versus(spock)).to eq("Wins")
    end
end
