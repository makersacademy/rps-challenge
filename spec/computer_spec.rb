require "computer"

describe Computer do
  subject(:comp) { described_class.new}

  describe "#choice" do
    it "can choose rock" do
      allow_any_instance_of(Object).to receive(:rand).and_return(0.2)
      expect(comp.choice).to eq "rock"
    end
    it "can choose paper" do
      allow_any_instance_of(Object).to receive(:rand).and_return(0.5)
      expect(comp.choice).to eq "paper"
    end
    it "can choose paper" do
      allow_any_instance_of(Object).to receive(:rand).and_return(0.8)
      expect(comp.choice).to eq "scissors"
    end

  end
end
