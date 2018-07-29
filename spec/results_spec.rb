require 'results'

describe Results do
  subject(:results) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#win?' do
    it 'player wins' do
      allow(computer).to receive(:pc_move).and_return("scissors")
      allow(player).to receive(:move).and_return("rock")
      expect(results.win?).to be true
    end
  end

  describe '#lose?' do
    it 'player loses' do
      allow(computer).to receive(:pc_move).and_return("scissors")
      allow(player).to receive(:move).and_return("paper")
      expect(results.lose?).to be true
    end
  end

  describe '#draw?' do
    it 'player draws' do
      allow(computer).to receive(:pc_move).and_return("scissors")
      allow(player).to receive(:move).and_return("scissors")
      expect(results.draw?).to be true
    end
  end
end
