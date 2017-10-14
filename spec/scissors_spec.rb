require 'scissors'

describe Scissors do
  subject(:scissors) { described_class.new }
  let(:paper) { double(:paper) }
  let(:rock) { double(:rock) }
  let(:spock) { double(:spock) }
  let(:lizard) { double(:lizard) }

  describe "#versus"
    it "returns lose against rock" do
      allow(rock).to receive(:is_a?).with(Paper) { false }
      allow(rock).to receive(:is_a?).with(Scissors) { false }
      allow(rock).to receive(:is_a?).with(Rock) { true }
      allow(rock).to receive(:is_a?).with(Spock) { false }
      allow(rock).to receive(:is_a?).with(Lizard) { false }
      expect(scissors.versus(rock)).to eq("Loses")
    end

    it "returns win against paper" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      allow(paper).to receive(:is_a?).with(Spock) { false }
      allow(paper).to receive(:is_a?).with(Lizard) { false }
      expect(scissors.versus(paper)).to eq("Wins")
    end

    it "returns draw against scissors" do
      allow(scissors).to receive(:is_a?).with(Paper) { false }
      allow(scissors).to receive(:is_a?).with(Scissors) { true }
      allow(scissors).to receive(:is_a?).with(Rock) { false }
      allow(scissors).to receive(:is_a?).with(Spock) { false }
      allow(scissors).to receive(:is_a?).with(Lizard) { false }
      expect(scissors.versus(scissors)).to eq("Draw")
    end

    it "returns win against lizard" do
      allow(lizard).to receive(:is_a?).with(Paper) { false }
      allow(lizard).to receive(:is_a?).with(Scissors) { false }
      allow(lizard).to receive(:is_a?).with(Rock) { false }
      allow(lizard).to receive(:is_a?).with(Spock) { false }
      allow(lizard).to receive(:is_a?).with(Lizard) { true }
      expect(scissors.versus(lizard)).to eq("Wins")
    end

    it "returns lose against spock" do
      allow(spock).to receive(:is_a?).with(Paper) { false }
      allow(spock).to receive(:is_a?).with(Scissors) { false }
      allow(spock).to receive(:is_a?).with(Rock) { false }
      allow(spock).to receive(:is_a?).with(Spock) { true }
      allow(spock).to receive(:is_a?).with(Lizard) { false }
      expect(scissors.versus(spock)).to eq("Loses")
    end
end
