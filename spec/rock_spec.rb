require 'rock'

describe Rock do

  subject(:rock) {described_class.new}
  let(:paper) { double(:paper)}

  describe "#versus"
    it "returns lose against paper" do
      allow(paper).to receive(:is_a?).with(Paper) { true }
      allow(paper).to receive(:is_a?).with(Scissors) { false }
      allow(paper).to receive(:is_a?).with(Rock) { false }
      expect(rock.versus(paper)).to eq("Lose")
    end
end
