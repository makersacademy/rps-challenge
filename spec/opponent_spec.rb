require 'opponent'

describe Opponent do

  describe "#choose" do
    it "returns the opponent's move" do
      expect(subject).to receive(:rand).and_return(0)
      expect(subject.choose).to eq "Rock"
    end
  end

end
