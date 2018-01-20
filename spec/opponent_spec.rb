require 'opponent'

describe Opponent do

  subject(:opponent) { described_class.new}

  describe '#move' do
    it 'The SuperAI opponent has a move assigned' do
      allow(opponent).to receive(:hand).and_return(:rock)
      expect(opponent.hand).to eq :rock
    end
  end
end
