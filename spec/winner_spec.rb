require 'winner'

describe Winner do

  describe "#result" do
    it "returns Won!" do
      expect(subject.result("Rock", "Scissors")).to eq :Won!
    end

    it "returns Lost!" do
      expect(subject.result("Paper", "Scissors")).to eq :Lost!
    end

    it "returns Draw!" do
      expect(subject.result("Paper", "Paper")).to eq :Draw!
    end

  end
end
