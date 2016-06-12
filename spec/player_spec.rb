require 'player'

describe Player do
  subject(:player) { described_class.new('Player1') }

  describe '#name' do
    it 'sets player name' do
      expect(player.name).to eq 'Player1'
    end
  end

  describe '#hand' do
    it 'has no hand' do
      expect(player.hand).to eq 'no hand'
    end
  end
end
