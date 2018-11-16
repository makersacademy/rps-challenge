require 'adjudicator'

describe Adjudicator do
  let(:rocker) { double :rocker, move: "ROCK" }
  let(:paperer) { double :paperer, move: "PAPER" }
  let(:scissorator) { double :scissorator, move: "SCISSORS"}

  describe '#playX.move' do
    it 'returns the player moves as strings' do
      judge = Adjudicator.new(rocker, paperer)
      expect(judge.play1.move).to eq("ROCK")
      expect(judge.play2.move).to eq("PAPER")
    end
  end

  describe '#who_wins' do
    it 'returns the paper player when rock vs paper' do
      judge = Adjudicator.new(rocker, paperer)
      expect(judge.who_wins).to eq(paperer)
    end
  end
end
