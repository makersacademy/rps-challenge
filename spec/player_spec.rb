require 'player'

describe Player do
  subject(:player) { described_class.new('Matt') }

  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq('Matt')
    end
  end

  describe '#choose' do
    it { is_expected.to respond_to(:choose).with(1).argument }
  end

  describe '#selection' do
    it 'returns the selection made' do
      player.choose('Rock')
      expect(player.selection).to eq('Rock')
    end
  end
end
