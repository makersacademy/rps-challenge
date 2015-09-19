require 'game'

describe Game do
  context "Player 1 vs Computer" do

      it "returns a draw if both choose same shape" do
        expect(subject.play(:rock, :rock)).to eq :draw
      end

      it "returns a draw if both choose same shape" do
        expect(subject.play(:paper, :paper)).to eq :draw
      end

      it "returns a draw if both choose same shape" do
        expect(subject.play(:scissors, :scissors)).to eq :draw
      end

      it "returns rock if rock plays scissors" do
        expect(subject.play(:rock, :scissors)).to eq :rock
      end

      it "returns paper if paper plays rock" do
        expect(subject.play(:paper, :rock)).to eq :paper
      end

      it "returns scissors if scissors plays paper" do
        expect(subject.play(:scissors, :paper)).to eq :scissors
      end
  end

end
