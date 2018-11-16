require 'adjudicator'

describe Adjudicator do
  let(:rocker) { double :rocker, move: "ROCK" }
  let(:paperer) { double :paperer, move: "PAPER" }
  let(:scissorator) { double :scissorator, move: "SCISSORS"}

  describe '#pXmove' do
    it 'returns the player moves as strings' do
      judge = Adjudicator.new(rocker, paperer)
      expect(judge.p1move).to eq("ROCK")
      expect(judge.p2move).to eq("PAPER")
    end
  end
end
