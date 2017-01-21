require "compare"

describe Compare do
  let(:compare){described_class}

  describe "#throws" do
    it "knows what beats what" do
      expect(compare.throws :paper,:rock).to eq :win
      expect(compare.throws :paper,:scissors).to eq :loss
      expect(compare.throws :rock,:scissors).to eq :win
      expect(compare.throws :rock,:paper).to eq :loss
      expect(compare.throws :scissors,:paper).to eq :win
      expect(compare.throws :scissors,:rock).to eq :loss
    end
    it "knows what draws are" do
      expect(compare.throws :paper,:paper).to eq :draw
      expect(compare.throws :rock,:rock).to eq :draw
      expect(compare.throws :scissors,:scissors).to eq :draw
    end
  end
end
