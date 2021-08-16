require 'game'

describe Game do
  include Game
  
  describe '#random_move' do
    it 'returns a random move' do
      expect(['rock', 'paper', 'scissors']).to include(random_move)
    end
  end

  describe '#judge' do
    it 'correctly evaluates rock vs. paper' do
      expect(judge(:rock, :paper)).to eq(1)
      expect(judge(:paper, :rock)).to eq(-1)
    end

    it 'correctly evaluates paper vs. scissors' do
      expect(judge(:paper, :scissors)).to eq(1)
      expect(judge(:scissors, :paper)).to eq(-1)
    end

    it 'correctly evaluates scissors vs. rock' do
      expect(judge(:scissors, :rock)).to eq(1)
      expect(judge(:rock, :scissors)).to eq(-1)
    end

    it 'correctly evaluates a draw' do
      expect(judge(:rock, :rock)).to eq(0)
      expect(judge(:paper, :paper)).to eq(0)
      expect(judge(:scissors, :scissors)).to eq(0)
    end
  end
end
