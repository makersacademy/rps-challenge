require 'computer'

describe Computer do

  describe "#name" do
    it "returns the name" do
      expect(subject.name).to eq "Archaon"
    end
  end

  describe "#choose" do  
    it "returns the computer move" do
      allow(subject).to receive(:choose).and_return('rock')
      expect(subject.choose).to eq "rock"
    end
  end
end
