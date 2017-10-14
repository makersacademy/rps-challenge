require 'rock'

describe Rock do

  subject(:rock) { described_class.new }
  let(:paper) { double(:paper) }
  let(:scissors) { double(:scissors) }

  describe "#versus"
    it "returns lose against paper" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      expect(rock.versus(paper)).to eq("Lose")
    end

    it "returns win against scissors" do
      allow(scissors).to receive(:is_a?).with(Paper) { false }
      allow(scissors).to receive(:is_a?).with(Scissors) { true }
      allow(scissors).to receive(:is_a?).with(Rock) { false }
      expect(rock.versus(scissors)).to eq("Win")
    end

    it "returns draw against rock" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      expect(rock.versus(rock)).to eq("Draw")
    end
end
