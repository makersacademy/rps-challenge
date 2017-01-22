require "rules"

describe Rules do
  let(:rules){described_class}

  describe "#compare" do
    it "knows what beats what" do
      expect(rules.compare :paper,:rock).to eq :win
      expect(rules.compare :paper,:scissors).to eq :loss
      expect(rules.compare :rock,:scissors).to eq :win
      expect(rules.compare :rock,:paper).to eq :loss
      expect(rules.compare :scissors,:paper).to eq :win
      expect(rules.compare :scissors,:rock).to eq :loss
    end
    it "knows what draws are" do
      expect(rules.compare :paper,:paper).to eq :draw
      expect(rules.compare :rock,:rock).to eq :draw
      expect(rules.compare :scissors,:scissors).to eq :draw
    end
  end
end
