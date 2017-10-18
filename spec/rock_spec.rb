require 'rock'

describe Rock do

  subject(:rock) { described_class.new }
  let(:paper) { double(:paper) }
  let(:scissors) { double(:scissors) }
  let(:spock) { double(:spock) }
  let(:lizard) { double(:lizard) }

  describe "#versus"
    it "returns lose against paper" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      allow(paper).to receive(:is_a?).with(Spock) { false }
      allow(paper).to receive(:is_a?).with(Lizard) { false }
      expect(rock.versus(paper)).to eq("Loses")
    end

    it "returns win against scissors" do
      allow(scissors).to receive(:is_a?).with(Paper) { false }
      allow(scissors).to receive(:is_a?).with(Scissors) { true }
      allow(scissors).to receive(:is_a?).with(Rock) { false }
      allow(scissors).to receive(:is_a?).with(Spock) { false }
      allow(scissors).to receive(:is_a?).with(Lizard) { false }
      expect(rock.versus(scissors)).to eq("Wins")
    end

    it "returns draw against rock" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      allow(paper).to receive(:is_a?).with(Spock) { false }
      allow(paper).to receive(:is_a?).with(Lizard) { false }
      expect(rock.versus(rock)).to eq("Draw")
    end

    it "returns win against lizard" do
      allow(lizard).to receive(:is_a?).with(Paper) { false }
      allow(lizard).to receive(:is_a?).with(Scissors) { false }
      allow(lizard).to receive(:is_a?).with(Rock) { false }
      allow(lizard).to receive(:is_a?).with(Spock) { false }
      allow(lizard).to receive(:is_a?).with(Lizard) { true }
      expect(rock.versus(lizard)).to eq("Wins")
    end

    it "returns lose against spock" do
      allow(spock).to receive(:is_a?).with(Paper) { false }
      allow(spock).to receive(:is_a?).with(Scissors) { false }
      allow(spock).to receive(:is_a?).with(Rock) { false }
      allow(spock).to receive(:is_a?).with(Spock) { true }
      allow(spock).to receive(:is_a?).with(Lizard) { false }
      expect(rock.versus(spock)).to eq("Loses")
    end
end
