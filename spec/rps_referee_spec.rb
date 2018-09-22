require 'rps_referee'

describe RPSReferee do

  subject(:referee) { described_class.new }

  context "#decision" do
    it "calculates decision (Draw)" do
      moves = [:rock, :rock]
      expect(referee.decision(moves)).to eq :Draw
    end

    it "calculates decision (Player 1 wins)" do
      moves = [:rock, :scissors]
      expect(referee.decision(moves)).to eq 0
    end

    it "calculates decision (Player 2 wins)" do
      moves = [:rock, :paper]
      expect(referee.decision(moves)).to eq 1
    end
  end
end
