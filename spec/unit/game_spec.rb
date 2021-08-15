require 'game'

describe Game do
  describe '#random_move' do
    it 'returns a random move' do
      expect(['rock', 'paper', 'scissors']).to include(described_class.random_move)
    end
  end

  describe '#judge' do
    it 'correctly evaluates rock vs. paper' do
      expect(Game.judge(:rock, :paper)).to eq(1)
      expect(Game.judge(:paper, :rock)).to eq(-1)
    end

    it 'correctly evaluates paper vs. scissors' do
      expect(Game.judge(:paper, :scissors)).to eq(1)
      expect(Game.judge(:scissors, :paper)).to eq(-1)
    end

    it 'correctly evaluates scissors vs. rock' do
      expect(Game.judge(:scissors, :rock)).to eq(1)
      expect(Game.judge(:rock, :scissors)).to eq(-1)
    end

    it 'correctly evaluates a draw' do
      expect(Game.judge(:rock, :rock)).to eq(0)
      expect(Game.judge(:paper, :paper)).to eq(0)
      expect(Game.judge(:scissors, :scissors)).to eq(0)
    end
  end
end
