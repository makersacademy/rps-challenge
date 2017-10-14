require 'paper'

describe Paper do

  subject(:paper) { described_class.new }
  let(:rock) { double(:rock) }
  let(:scissors) { double(:scissors) }
  let(:spock) { double(:spock) }
  let(:lizard) { double(:lizard) }

  describe "#versus"
    it "returns lose against scissors" do
      allow(scissors).to receive(:is_a?).with(Paper) { false }
      allow(scissors).to receive(:is_a?).with(Scissors) { true }
      allow(scissors).to receive(:is_a?).with(Rock) { false }
      allow(scissors).to receive(:is_a?).with(Spock) { false }
      allow(scissors).to receive(:is_a?).with(Lizard) { false }
      expect(paper.versus(scissors)).to eq("Loses")
    end

    it "returns win against rock" do
      allow(rock).to receive(:is_a?).with(Paper) { false }
      allow(rock).to receive(:is_a?).with(Scissors) { false }
      allow(rock).to receive(:is_a?).with(Rock) { true }
      allow(rock).to receive(:is_a?).with(Spock) { false }
      allow(rock).to receive(:is_a?).with(Lizard) { false }
      expect(paper.versus(rock)).to eq("Wins")
    end

    it "returns draw against paper" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      allow(paper).to receive(:is_a?).with(Spock) { false }
      allow(paper).to receive(:is_a?).with(Lizard) { false }
      expect(paper.versus(paper)).to eq("Draw")
    end

    it "returns lose against lizard" do
      allow(lizard).to receive(:is_a?).with(Paper) { false }
      allow(lizard).to receive(:is_a?).with(Scissors) { false }
      allow(lizard).to receive(:is_a?).with(Rock) { false }
      allow(lizard).to receive(:is_a?).with(Spock) { false }
      allow(lizard).to receive(:is_a?).with(Lizard) { true }
      expect(paper.versus(lizard)).to eq("Loses")
    end

    it "returns win against spock" do
      allow(spock).to receive(:is_a?).with(Paper) { false }
      allow(spock).to receive(:is_a?).with(Scissors) { false }
      allow(spock).to receive(:is_a?).with(Rock) { false }
      allow(spock).to receive(:is_a?).with(Spock) { true }
      allow(spock).to receive(:is_a?).with(Lizard) { false }
      expect(paper.versus(spock)).to eq("Wins")
    end
end
