require "compare"

describe Compare do
  subject(:compare) { described_class.new }

  describe "#result"
    it "returns win" do
      expect(compare.result("Scissors", "Paper")).to eq "win"
    end

    it "returns draw" do
      expect(compare.result("Rock", "Rock")).to eq "draw"
    end

    it "returns lose" do
      expect(compare.result("Paper", "Scissors")).to eq "lose"
    end
end
