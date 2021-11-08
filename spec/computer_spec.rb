require 'computer'

describe Computer do

  describe "#choose" do  
    it "returns the computer move" do
      allow(subject).to receive(:choose).and_return('rock')
      expect(subject.choose).to eq "rock"
    end
  end
end