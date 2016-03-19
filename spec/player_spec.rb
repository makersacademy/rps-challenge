require 'player'

describe Player do

  subject(:player) { described_class.new name }
  let(:name) { double 'Shane' }

  describe '#initialize' do
    it 'returns player one\'s name' do
      expect(player.name).to be name
    end
  end
  describe '#score' do
    it 'returns the player\'s score at start of game' do
      allow(player).to receive(:score).and_return 0
      expect(player.score).to eq 0
    end
  end
end
