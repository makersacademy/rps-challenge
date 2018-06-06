require 'result'

describe Result do
  subject(:result) { described_class.new(player, computer = "scissors") }
  let(:computer) { double :computer }
  let(:player) { double :player }

  describe '#win?' do
    it 'player wins' do
      allow(player).to receive(:choice).and_return("rock")
      expect(result.win?).to be true
    end
  end

  describe '#lose?' do
    it 'player loses' do
      allow(player).to receive(:choice).and_return("paper")
      expect(result.lose?).to be true
    end
  end

  describe '#draw?' do
    it 'player draws' do
      allow(player).to receive(:choice).and_return("scissors")
      expect(result.draw?).to be true
    end
  end
end
