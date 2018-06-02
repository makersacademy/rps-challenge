require 'winner'

describe Winner do

  describe "#result" do
    it "returns Won!" do
      expect(subject.result("Rock", "Scissors")).to eq :Won!
    end

    it "returns Lost!" do
      expect(subject.result("Paper", "Scissors")).to eq :Lost!
    end

  end
end
