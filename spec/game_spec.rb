
describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#beats?' do
    it 'confirms that one weapon beats the other' do
      expect(game.beats?(:rock, :scissors)).to eq true
    end
  end

  describe '#result' do
    it 'confirms that the player wins' do
      allow(player).to receive(:weapon) { :rock }
      allow(computer).to receive(:weapon) { :scissors }
      expect(game.result).to eq :win
    end
  end
end
