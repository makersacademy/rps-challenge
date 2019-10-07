require 'player'

RSpec.describe Player do
  let(:player) { described_class.new('chris') }
  describe 'when initialize' do
    it 'must have a score of zero' do
      expect(player.score).to eq(described_class::DEFAULT_SCORE)
    end
  end
end
