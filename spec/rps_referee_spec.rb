require 'rps_referee'

describe RPSReferee do

  subject(:referee) { described_class.new }

  context "#decision" do
    it "calculates decision (Draw)" do
      expect(referee.decision(:rock, :rock)).to eq :Draw
    end

    it "calculates decision (Player 1 wins)" do
      expect(referee.decision(:rock, :scissors)).to eq 0
    end

    it "calculates decision (Player 2 wins)" do
      expect(referee.decision(:rock, :paper)).to eq 1
    end
  end
end
