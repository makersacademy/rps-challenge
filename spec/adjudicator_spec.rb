require 'adjudicator'

describe Adjudicator do
  let(:rocker) { double :rocker, move: "ROCK" }
  let(:paperer) { double :paperer, move: "PAPER" }
  let(:scissorator) { double :scissorator, move: "SCISSORS" }

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
      judge.who_wins
      expect(judge.result).to eq(paperer)
    end

    it 'returns the scissors player when scissors vs paper' do
      judge = Adjudicator.new(scissorator, paperer)
      judge.who_wins
      expect(judge.result).to eq(scissorator)
    end

    it 'returns DRAW if both players are paper' do
      judge = Adjudicator.new(paperer, paperer)
      judge.who_wins
      expect(judge.result).to eq("DRAW")
    end
  end
end
