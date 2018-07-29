require 'results'

describe Results do
  subject(:results) { described_class.new(player, "scissors") }
  let(:computer) { double :computer }
  let(:player) { double :player }

  describe '#win?' do
    it 'player wins' do
      allow(player).to receive(:move).and_return("rock")
      expect(results.win?).to be true
    end
  end

  describe '#lose?' do
    it 'player loses' do
      allow(player).to receive(:move).and_return("paper")
      expect(results.lose?).to be true
    end
  end

  describe '#draw?' do
    it 'player draws' do
      allow(player).to receive(:move).and_return("scissors")
      expect(results.draw?).to be true
    end
  end
end
