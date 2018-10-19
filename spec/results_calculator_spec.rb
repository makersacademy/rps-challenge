require 'results_calculator'

describe ResultsCalculator do
  let(:calculation_1) { described_class.new("ROCK", "SCISSORS") }
  let(:calculation_2) { described_class.new("PAPER", "ROCK") }
  let(:calculation_3) { described_class.new("SCISSORS", "PAPER") }
  let(:draw_1) { described_class.new("ROCK", "ROCK") }
  let(:draw_2) { described_class.new("PAPER", "PAPER") }
  let(:draw_3) { described_class.new("SCISSORS", "SCISSORS") }

  describe "#weapons" do
    it 'should be able to store 2 weapons' do
      expect(calculation_1.weapons).to eq "ROCK, SCISSORS"
    end
  end

  describe "#winner" do
    it "should announce that rock wins in rock vs. scissors" do
      expect(calculation_1.winner).to eq "ROCK"
    end

    it "should announce that paper wins in rock vs. paper" do
      expect(calculation_2.winner).to eq "PAPER"
    end

    it "should announce that scissors wins in scissors vs. paper" do
      expect(calculation_3.winner).to eq "SCISSORS"
    end

    it "should announce a draw when both are rock" do
      expect(draw_1.winner).to eq "DRAW"
    end

    it "should announce a draw when both are paper" do
      expect(draw_2.winner).to eq "DRAW"
    end

    it "should announce a draw when both are scissors" do
      expect(draw_3.winner).to eq "DRAW"
    end
  end
end
