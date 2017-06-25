require 'opponent'

describe Opponent do
  let(:opponent) { described_class.new}

  describe "#choice" do
    it "returns random choice" do
      expect([:rock, :paper, :scissors]).to include opponent.choice
    end
  end
end
