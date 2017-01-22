require "rules"

describe Rules do
  let(:rules){described_class}

  describe "#compare" do
    it "knows what beats what" do
      expect(rules.compare :paper, :rock).to eq :win
      expect(rules.compare :paper, :spock).to eq :win
      expect(rules.compare :rock, :lizard).to eq :win
      expect(rules.compare :rock, :scissors).to eq :win
      expect(rules.compare :scissors, :paper).to eq :win
      expect(rules.compare :scissors, :lizard).to eq :win
      expect(rules.compare :spock, :rock).to eq :win
      expect(rules.compare :spock, :scissors).to eq :win
      expect(rules.compare :lizard, :paper).to eq :win
      expect(rules.compare :lizard, :spock).to eq :win
    end

    it "knows what loses to what" do
      expect(rules.compare :rock,:paper).to eq :loss
      expect(rules.compare :spock,:paper).to eq :loss
      expect(rules.compare :lizard,:rock).to eq :loss
      expect(rules.compare :scissors,:rock).to eq :loss
      expect(rules.compare :paper,:scissors).to eq :loss
      expect(rules.compare :lizard,:scissors).to eq :loss
      expect(rules.compare :rock,:spock).to eq :loss
      expect(rules.compare :scissors,:spock).to eq :loss
      expect(rules.compare :paper,:lizard).to eq :loss
      expect(rules.compare :spock,:lizard).to eq :loss
    end

    it "knows what draws are" do
      expect(rules.compare :paper,:paper).to eq :draw
      expect(rules.compare :rock,:rock).to eq :draw
      expect(rules.compare :scissors,:scissors).to eq :draw
      expect(rules.compare :spock,:spock).to eq :draw
      expect(rules.compare :lizard,:lizard).to eq :draw
    end
  end
end
