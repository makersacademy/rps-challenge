require "bot"

describe Bot do 
  it { expect(subject).to respond_to(:name) }

  describe "#round_choice" do 
    it "return random coice" do 
      allow(subject).to receive(:sample).and_return("Rock")
      subject.round_choice
      expect(subject.choice).to eq "Rock"
    end
  end
end
