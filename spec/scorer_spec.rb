require 'scorer'

describe Scorer do
  subject(:scorer) { described_class.new }

  describe '.score' do
    it 'returns an array of both players scores' do
      expect(scorer.score).to eq [0,0]
    end
  end

  describe '.player_1_win' do
    it 'increments player 1s score by 1' do
      scorer.player_1_win
      expect(scorer.score).to eq [1,0]
    end
  end

  describe '.player_2_win' do
    it 'increments player 2s score by 1' do
      scorer.player_2_win
      expect(scorer.score).to eq [0,1]
    end
  end
end
