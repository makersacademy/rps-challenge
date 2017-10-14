require 'spock'

describe Spock do

  subject(:spock) { described_class.new }
  let(:paper) { double(:paper) }
  let(:scissors) { double(:scissors) }
  let(:rock) { double(:rock) }
  let(:lizard) { double(:lizard) }

  describe "#versus"
    it "returns lose against paper" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      allow(paper).to receive(:is_a?).with(Spock) { false }
      allow(paper).to receive(:is_a?).with(Lizard) { false }
      expect(spock.versus(paper)).to eq("Loses")
    end

    it "returns lose against lizard" do
      allow(lizard).to receive(:is_a?).with(Paper) { false }
      allow(lizard).to receive(:is_a?).with(Scissors) { false }
      allow(lizard).to receive(:is_a?).with(Rock) { false }
      allow(lizard).to receive(:is_a?).with(Spock) { false }
      allow(lizard).to receive(:is_a?).with(Lizard) { true }
      expect(spock.versus(lizard)).to eq("Loses")
    end

    it "returns win against scissors" do
      allow(scissors).to receive(:is_a?).with(Paper) { false }
      allow(scissors).to receive(:is_a?).with(Scissors) { true }
      allow(scissors).to receive(:is_a?).with(Rock) { false }
      allow(scissors).to receive(:is_a?).with(Spock) { false }
      allow(scissors).to receive(:is_a?).with(Lizard) { false }
      expect(spock.versus(scissors)).to eq("Wins")
    end

    it "returns win against rock" do
      allow(rock).to receive(:is_a?).with(Paper) { false }
      allow(rock).to receive(:is_a?).with(Scissors) { false }
      allow(rock).to receive(:is_a?).with(Rock) { true }
      allow(rock).to receive(:is_a?).with(Spock) { false }
      allow(rock).to receive(:is_a?).with(Lizard) { false }
      expect(spock.versus(rock)).to eq("Wins")
    end

    it "returns draw against spock" do
      allow(spock).to receive(:is_a?).with(Paper) { false }
      allow(spock).to receive(:is_a?).with(Scissors) { false }
      allow(spock).to receive(:is_a?).with(Rock) { false }
      allow(spock).to receive(:is_a?).with(Spock) { true }
      allow(spock).to receive(:is_a?).with(Lizard) { false }
      expect(spock.versus(spock)).to eq("Draw")
    end
end
