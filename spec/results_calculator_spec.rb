require 'results_calculator'

describe ResultsCalculator do
  let(:calculation_1) { described_class.new("ROCK", "SCISSORS") }
  let(:calculation_2) { described_class.new("ROCK", "PAPER") }
  let(:calculation_3) { described_class.new("SCISSORS", "PAPER") }
  let(:calculation_4) { described_class.new("ROCK", "ROCK") }

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

    it "should announce a draw when both weapons are the same" do
      expect(calculation_4.winner).to eq "DRAW"
    end
  end
end
